cask "level5-build" do
  version "2.2.0"
  sha256 "01f499fe20b0887646005ae24dbecd21f9ef63e84e4ba4c9d9acb3d0e5b9104e"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
