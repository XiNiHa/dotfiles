# dotfiles

개인 셸 설정 파일 모음입니다. 뭐가 없습니다.

## 요구사항

- [zx](https://github.com/google/zx)

## 설치

```sh
./install.mjs -p macos # linux, ...
```

## 지원 플랫폼

- Mac (`macos`)
- Linux (`linux`)

## 구성요소

- [Zsh](https://www.zsh.org/): [`.zshrc-middle.sh`](./.zshrc-middle.sh)
  - 대충 `.zshrc` 중간에 넣고 쓸 수 있게 만든 파일로, `source ~/.zshrc-middle.sh`를 중간에 적절히 삽입하여 사용합니다.
- [Starship](https://starship.rs/): [`starship.toml`](./starship.toml)
- [Kime](https://github.com/Riey/kime) (`linux`): [`kime.yaml`](./kime.yaml)
- [yabai](https://github.com/koekeishiya/yabai) (`macos`): [`.yabairc`](./.yabairc)
- [skhd](https://github.com/koekeishiya/skhd) (`macos`): [`.skhdrc`](./.skhdrc)
