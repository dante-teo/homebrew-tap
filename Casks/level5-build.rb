cask "level5-build" do
  version "2.2.6"
  sha256 "69182326a5f4583e7f194d5eb67d7193a3ae9401ffd47734df0ce758f6afdc12"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.6-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
