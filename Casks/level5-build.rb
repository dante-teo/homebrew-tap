cask "level5-build" do
  version "2.0.0"
  sha256 "b8ae814d0c2dcd128413ed08fe25063deaf85a61a9edbbf5f1dac8d925b6f461"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.0.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
