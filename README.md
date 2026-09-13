# aliafshany/tap

Homebrew casks for macOS apps that are not in homebrew-cask.

## Install

```sh
brew tap aliafshany/tap
brew install --cask firelink
```

## Casks

| Cask | Description |
| --- | --- |
| `firelink` | [Firelink](https://github.com/nimbold/Firelink) — download manager for direct files, browser handoffs, media, and playlists. Apple Silicon only. |

### Note on Firelink and Gatekeeper

Firelink releases are ad-hoc signed and not notarized, so macOS blocks the app
after install. Homebrew 6.0 removed `--no-quarantine`, so clear the flag
yourself once, after installing or upgrading:

```sh
xattr -dr com.apple.quarantine /Applications/Firelink.app
```
