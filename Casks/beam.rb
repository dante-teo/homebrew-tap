cask "beam" do
  version "1.0.0"
  sha256 "bb3bbfb36e80298837f6a9bdf213df242ea2fb9eb684443e815977a9e67bb1e0"

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
