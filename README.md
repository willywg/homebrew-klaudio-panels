# willywg/klaudio-panels

Homebrew tap for [Klaudio Panels](https://github.com/willywg/klaudio-panels) — a native window embedding the Claude Code CLI.

## Install

```bash
brew tap willywg/klaudio-panels
brew install --cask klaudio-panels
```

## Upgrade

```bash
brew update
brew upgrade --cask klaudio-panels
```

## Uninstall

```bash
brew uninstall --cask klaudio-panels
brew untap willywg/klaudio-panels
```

## Notes

Klaudio Panels is **not yet signed with an Apple Developer ID**. On first launch, macOS will show one of two warnings and you'll need to approve the app once (right-click → Open, or run `xattr -cr "/Applications/Klaudio Panels.app"`). The cask prints the exact instructions after install — see `brew info --cask klaudio-panels` too.

Source, issues, and changelog live in the main repo:
<https://github.com/willywg/klaudio-panels>
