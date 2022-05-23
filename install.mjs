#!/usr/bin/env zx

import Components from "./components.mjs";
import Platforms from "./platforms.mjs";

const { p: platform } = argv;
if (!platform || !(platform in Platforms))
  throw new Error(
    "A valid platform should be provided. Options: " +
      Object.keys(Platforms).join(", ")
  );

const targets = Platforms[platform];

for (const target of targets) {
  if (!(target in Components)) {
    throw new Error("Unknown target found in preconfigured platform presets!");
  }
}

const resolved = targets
  .map((target) => Components[target])
  .map(([from, dir, to]) => [
    from,
    dir[0] === "~" ? path.join(os.homedir(), dir.slice(1)) : dir,
    to,
  ]);

await Promise.all(
  Array.from(new Set(resolved.map(([, dir]) => dir)).values()).map(
    (dir) => $`mkdir -p ${dir}`
  )
);

await Promise.all(
  resolved.map(async (component) => {
    const [from, dir, to] = component;
    await $`cp ${from} ${path.join(dir, to)}`;
  })
);

console.log(chalk.green("Installation done!"));
