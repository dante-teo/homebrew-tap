cask "level5island" do
    version "1.1.2"
    sha256 "8f2d67304ef2b2232157f08308155baa14c7d4c6888cc8f12d23d9f050a0e2f0"

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
