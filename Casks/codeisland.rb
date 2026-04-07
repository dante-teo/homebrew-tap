cask "codeisland" do
    version "1.0.6"
    sha256 "PLACEHOLDER"

    url "https://github.com/dante-teo/level5island/releases/download/v#{version}/CodeIsland.dmg"
    name "CodeIsland"
    desc "Real-time AI coding agent status panel for macOS Dynamic Island (Notch)"
    homepage "https://github.com/dante-teo/level5island"

    depends_on macos: ">= :sonoma"

    app "CodeIsland.app"

    caveats <<~EOS
      CodeIsland is not notarized. On first launch, macOS may block it.
      To allow it, run:
        xattr -cr /Applications/CodeIsland.app
      Or go to System Settings > Privacy & Security > Open Anyway.
    EOS

    zap trash: [
      "~/Library/Preferences/com.codeisland.app.plist",
      "~/Library/Application Support/CodeIsland",
    ]
  end
