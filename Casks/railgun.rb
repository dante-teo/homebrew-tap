cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "cf07b7a57efa005950b3ce031673f15b544fe62d38ecacbb67ae0a5502c9e9f5",
         intel: "6dcab824f0bc55d5f71038bd04bcd672dd894c6c6b8086084a3b098c07cb17ab"

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
