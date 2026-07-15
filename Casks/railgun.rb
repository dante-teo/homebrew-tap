cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "5cd97c37f34190c4bdc6bf583b0f57eae947c2c6b4945dca15ac243e9939688b",
         intel: "fe4fc5309838ad4aad839430f5f52b4d4819f4d14029ca1a9fa33f6a2fbbf449"

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
