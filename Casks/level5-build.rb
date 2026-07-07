cask "level5-build" do
  version "2.1.0"
  sha256 "7579b833095031f86eb70c25bc34d1fe0a68cc5f6d4eed93120d2db78e2e9a0f"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.1.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
