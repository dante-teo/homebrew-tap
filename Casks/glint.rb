cask "glint" do
  version "1.7.1"
  sha256 "3aaa9c85d6416679c00b744940b822e8df27695857b3e79ff61d35c19911c427"

  url "https://github.com/dante-teo/glint/releases/download/v#{version}/Glint-#{version}.dmg"
  name "Glint"
  desc "Polished macOS terminal for AI agents"
  homepage "https://github.com/dante-teo/glint"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Glint.app"

  zap trash: [
    "~/Library/Application Support/Glint",
    "~/Library/Preferences/app.glint.Glint.plist",
  ]
end
