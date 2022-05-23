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

await Promise.all(
  targets.map(async (target) => {
    const [from, dir, to] = Components[target];
    const resolvedDir = dir[0] === '~' ? path.join(os.homedir(), dir.slice(1)) : dir

    await $`mkdir -p ${resolvedDir}`;
    await $`cp ${from} ${path.join(resolvedDir, to)}`;
  })
);

console.log(chalk.green('Installation done!'))
