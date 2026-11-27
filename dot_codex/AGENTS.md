# Generic Agent Instructions

- **Do not commit the work** unless explicitly requested.
- **Fixes to unpushed commits.** When fixing changes in an unpushed commit, fold the fix into that commit.
- **No unnecessary comments** for code that is already self-explanatory.
- **Code is the SSOT**, docs are only supplementary for a brief overview. Minimize docs that could easily drift.
- **age files.** Encrypt with `~/repos/ct-snippets/encrypt-company.zsh`. Decrypt with `age` using `~/age-se-key.txt` as the identity file.

## When using T3 Code

- **Code review.** Delegate requested code reviews to GPT-6.2 Astra (`gpt-6.2-astra`) with High reasoning effort.
- **Web access.** If the web search tool blocks or fails to open a page, retry the same URL in the T3 browser, starting with `preview_status`.
