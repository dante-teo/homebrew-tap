cask "level5-build" do
  version "2.2.2"
  sha256 "165e6f65098df8356f89373bca1f1925ad802062353e73984a5bb13b309473f5"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.2-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
