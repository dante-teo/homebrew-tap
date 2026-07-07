cask "glint" do
  version "1.7.0"
  sha256 "da1bc0cafb881db3638292317468b54efcd17e487c9edc8744ac1bcc68119f33"

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
