cask "level5-build" do
  version "1.0.0"
  sha256 "017f332576041f12721fc80d3658700eac797e38d1c8abc99c2351ccee73beeb"

  url "https://github.com/dante-teo/level-5-build/releases/download/v1.0.0/Level5-Build-v1.0.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Native macOS app for running Level5 agent sessions"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
