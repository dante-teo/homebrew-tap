cask "glint" do
  version "0.1.26"
  sha256 "fb6ad74f6de408086b6075eed35f0cfc85b72770d6b49d687b7dbefb94ca557e"

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
