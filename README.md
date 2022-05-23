# dotfiles

개인 셸 설정 파일 모음입니다. 뭐가 없습니다.

## 설치

```sh
./install.sh
```

## 구성요소

- [Zsh](https://www.zsh.org/): [`.zshrc-middle.sh`](./.zshrc-middle.sh)
  - 맨 위랑 맨 아래에는 주로 환경 한정적인 스크립트가 들어가는 것 같아서 대충 중간에 넣고 쓸 수 있게 만든 파일입니다.
  - `source ~/.zshrc-middle.sh`를 `~/.zshrc` 중간에 삽입하여 사용합니다.
- [Starship](https://starship.rs/): [`starship.toml`](./starship.toml)
  - 원래 powerlevel10k를 쓰고 싶었는데 Mac의 Warp가 p10k를 지원 안 한다 그래서 이걸 쓰고 있습니다.
