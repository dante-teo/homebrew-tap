cask "beam" do
  version "1.2.1"
  sha256 "a2db551b930c2202b599949c34b8f0b53e22fe709f56e53b37a484eca444741d"

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
