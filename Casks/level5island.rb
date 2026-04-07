cask "level5island" do
    version "1.1.0"
    sha256 "626004554102cbd40dcc66d12610e62880a8b4f75a0cc593a8e6221edd26d634"

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
