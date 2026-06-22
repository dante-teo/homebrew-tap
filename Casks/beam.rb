cask "beam" do
  version "1.2.0"
  sha256 "0ff00287bcca4fab52b8ece7828f4ebf307261f042e7510dbae2bc833ff3f8bd"

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
