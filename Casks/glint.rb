cask "glint" do
  version "1.5.3"
  sha256 "be6e986d31497f73740999a4e330385cc9e8adb02ab4189de5c179270bdd0e8d"

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
