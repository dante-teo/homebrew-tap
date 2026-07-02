cask "level5-build" do
  version "0.0.0"
  sha256 "0764cbc0a6028cdd6e8e5ee5f524f26b5eaaa58f2062d4ff9b7e73a07d9819b5"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v0.0.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
