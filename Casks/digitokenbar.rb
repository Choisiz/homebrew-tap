cask "digitokenbar" do
  version "0.1.0"
  sha256 "fc52b114a49fac121552159697485c5d330a455c77240a4c6fe27d6ebef63121"

  url "https://github.com/Choisiz/DigiTokenBar/releases/download/v#{version}/DigiTokenBar-#{version}-macos-arm64.zip"
  name "DigiTokenBar"
  desc "Digimon menu bar companion powered by local AI coding token usage"
  homepage "https://github.com/Choisiz/DigiTokenBar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DigiTokenBar.app"

  caveats <<~EOS
    This app is ad-hoc signed and is not Apple-notarized.
    If macOS blocks a trusted download, use System Settings > Privacy & Security > Open Anyway.
    First artwork display requires internet access.
  EOS
end
