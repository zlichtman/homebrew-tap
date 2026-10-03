# Zach Lichtman’s Homebrew tap

```sh
brew install --cask zlichtman/tap/macspaces
```

Installs MacSpaces 2.43 on macOS 15 or later, Apple silicon or Intel. MacSpaces updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`. The cask pins the signed, notarized installer with a SHA-256 checksum.

Anyone who installed the old `macspaces@beta` cask moves to `macspaces` on their next `brew update`. The `tsukumo` cask is retired; Tsukumo is a download on [zlichtman.com](https://zlichtman.com/open-source#tsukumo).

## Updating the cask

After publishing a release, update `version` and `sha256` in `Casks/macspaces.rb`, run `brew audit --cask --strict` and a test install, then commit and push.

[MacSpaces source and releases](https://github.com/zlichtman/MacSpaces)
