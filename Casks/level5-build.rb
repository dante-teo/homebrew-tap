cask "level5-build" do
  version "2.2.5"
  sha256 "210445ed465ec1281cecc4520668bb7a53e8a116d80568cca8e89597d3ecbcbd"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.5-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
