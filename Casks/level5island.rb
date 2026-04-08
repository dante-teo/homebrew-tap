cask "level5island" do
    version "1.4.1"
    sha256 "2c8775d224c14ba335f66694dc987531a3737e292640efde7d85e2ff8e7b1a51"

    url "https://github.com/dante-teo/level5island/releases/download/v#{version}/Level5Island.dmg"
    name "Level5Island"
    desc "Real-time AI coding agent status panel for macOS Dynamic Island (Notch)"
    homepage "https://github.com/dante-teo/level5island"

    depends_on macos: ">= :sonoma"

    app "Level5Island.app"

    caveats <<~EOS
      Level5Island is not notarized. On first launch, macOS may block it.
      To allow it, run:
        xattr -cr /Applications/Level5Island.app
      Or go to System Settings > Privacy & Security > Open Anyway.
    EOS

    zap trash: [
      "~/Library/Preferences/com.level5island.app.plist",
      "~/Library/Application Support/Level5Island",
    ]
  end
