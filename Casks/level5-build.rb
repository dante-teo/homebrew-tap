cask "level5-build" do
  version "1.0.1"
  sha256 "8274ab1baa5736d0718e0494d5bedfffedaf3ef6c69d78fff5b82f9884584251"

  url "https://github.com/dante-teo/level-5-build/releases/download/v1.0.1/Level5-Build-v1.0.1-macos-arm64.dmg"
  name "Level5 Build"
  desc "Native macOS app for running Level5 agent sessions"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
