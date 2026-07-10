cask "level5-build" do
  version "2.3.0"
  sha256 "873dea957de828c8ff8c9499bdd759110c19d7705fea077c4cc6bf7511a7804a"

  url "https://github.com/dante-teo/level-5-build/releases/download/v#{version}/Level5-Build-v2.3.0-macos-arm64.dmg"
  name "Level5 Build"
  desc "Open-source desktop app for AI coding workflows"
  homepage "https://github.com/dante-teo/level-5-build"

  depends_on arch: :arm64

  app "Level5 Build.app"
end
