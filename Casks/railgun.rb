cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "afa86e9ec124ac9fa7e5befb6bf5f5badeab462f27e3cae025a3399eecebbdac",
         intel: "6ba512563dce85f6b91128e64e0b534202bb6edc86f3a94c2baafc7f07b46f1b"

  url "https://github.com/dante-teo/railgun/releases/download/v#{version}/Railgun-#{version}-#{arch}.zip"
  name "Railgun"
  desc "AI coding agent for local development workflows"
  homepage "https://github.com/dante-teo/railgun"

  depends_on macos: ">= :ventura"

  app "Railgun.app"

  zap trash: [
    "~/Library/Application Support/Railgun",
    "~/Library/Caches/sh.railgun.desktop",
    "~/Library/Preferences/sh.railgun.desktop.plist",
    "~/Library/Saved Application State/sh.railgun.desktop.savedState",
  ]
end
