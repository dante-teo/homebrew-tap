cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "99aa745623c282feb68da1fecd6357f6f5f87b9b67d6466ecc1a69b7fb9c9924",
         intel: "9f73fe7d8e4004b08b9c4e12cc0d7d3900c92a1c1b8d292fedbca6cd2d45658c"

  url "https://github.com/dante-teo/railgun/releases/download/v#{version}/Railgun-homebrew-#{version}-darwin-#{arch}.zip"
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
