function entry(from, dir, to) {
  return { from, dir, to }
}

export default {
  alacritty: entry('./alacritty.yml', '~/.config/alacritty', 'alacritty.yml'),
  bg: entry('./images/bg.jpg', '~/.local/share/backgrounds', 'bg.jpg'),
  kime: entry('./kime.yaml', '~/.config/kime', 'config.yaml'),
  sirula: [
    entry('./sirula.toml', '~/.config/sirula', 'config.toml'),
    entry('./sirula.css', '~/.config/sirula', 'style.css'),
  ],
  skhd: entry('./.skhdrc', '~/', '.skhdrc'),
  starship: entry('./starship.toml', '~/.config', 'starship.toml'),
  sway: entry('./sway', '~/.config/sway', 'config'),
  swaylock: entry('./swaylock', '~/.config/swaylock', 'config'),
  yabai: entry('./.yabairc', '~/', '.yabairc'),
  zsh: entry('./.zshrc-middle.sh', '~/', '.zshrc-middle.sh'),
}
