cask "glint" do
  version "1.4.2"
  sha256 "0bcc38b8d9980ad4d4bb3ce85bd8160881f85ee36e72de237afe8a3df8bfd13b"

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
