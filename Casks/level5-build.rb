cask "level5-build" do
  version "2.2.1"
  sha256 "5cb94eec85a48da8ea9bcd6cf31501a6e42a06270e63180d2be6f71762d731ae"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.1-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
