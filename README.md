# Choisiz Homebrew tap

Homebrew casks for [DigiTokenBar](https://github.com/Choisiz/DigiTokenBar).

## Install

Requires [Homebrew](https://brew.sh), macOS 14+ and Apple Silicon (M1 or later).

```sh
brew install --cask choisiz/tap/digitokenbar
```

Open **DigiTokenBar** from Applications. Homebrew verifies the download checksum automatically.
The app is ad-hoc signed, without Developer ID signing or Apple notarization.
This cask removes only `com.apple.quarantine` from the installed DigiTokenBar app,
matching the upstream installation approach without clearing other attributes.
It does not disable Gatekeeper globally or grant Apple notarization. If macOS blocks
a trusted direct download, follow [Apple's Open Anyway instructions](https://support.apple.com/102445).
First artwork display requires internet access.

## Update

Quit DigiTokenBar before upgrading:

```sh
brew update
brew upgrade --cask choisiz/tap/digitokenbar
```

## Uninstall

```sh
brew uninstall --cask digitokenbar
```

Normal uninstall preserves your companion data in `~/Library/Application Support/DigiTokenBar/`.

## Maintainers

After publishing a new arm64 ZIP, update `version` and `sha256` in `Casks/digitokenbar.rb`.
Keep the versioned release URL immutable. The hash must match the published ZIP.

This repository distributes installation metadata, not third-party artwork. DigiTokenBar is
an unofficial fan project; see its [LICENSE](https://github.com/Choisiz/DigiTokenBar/blob/main/LICENSE),
[NOTICE](https://github.com/Choisiz/DigiTokenBar/blob/main/NOTICE.md) and
[third-party notices](https://github.com/Choisiz/DigiTokenBar/blob/main/THIRD_PARTY_NOTICES.md).
The MIT license here covers this tap's installation metadata only.
