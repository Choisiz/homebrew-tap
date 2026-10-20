cask "digitokenbar" do
  version "0.1.1"
  sha256 "5de53a197dd9b0a51e97b658f8872a4d0b3dbfaf4778fcb188f2fc092af4d8ae"

  url "https://github.com/Choisiz/DigiTokenBar/releases/download/v#{version}/DigiTokenBar-#{version}-macos-arm64.zip"
  name "DigiTokenBar"
  desc "Digimon menu bar companion powered by local AI coding token usage"
  homepage "https://github.com/Choisiz/DigiTokenBar"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DigiTokenBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/DigiTokenBar.app"],
                   sudo: false
  end

  caveats <<~EOS
    This app is ad-hoc signed and is not Apple-notarized.
    This cask removes only the quarantine attribute from DigiTokenBar.app after installation.
    First artwork display requires internet access.
  EOS
end
