cask "level5-build" do
  version "2.2.3"
  sha256 "80e5f747faaf56797c641586603fe37271ed91bb7a6c9c457ba23369466f044f"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.2.3-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
