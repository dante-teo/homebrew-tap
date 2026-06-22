cask "beam" do
  version "1.1.0"
  sha256 "f801f2f67f42b39b930b81ab71c9b7eece5b28c832ce78c29cea1f94603e5a1a"

  url "https://github.com/dante-teo/beam/releases/download/v#{version}/Beam-#{version}.zip"
  name "Beam"
  desc "Native terminal app built around Ghostty"
  homepage "https://github.com/dante-teo/beam"

  depends_on macos: :tahoe

  app "Beam.app"

  caveats <<~EOS
    Beam is not notarized. On first launch, macOS may block it.
    To allow it, run:
      xattr -cr /Applications/Beam.app
    Or go to System Settings > Privacy & Security > Open Anyway.
  EOS
end
