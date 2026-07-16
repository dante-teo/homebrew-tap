cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "e12824537817d462d1de581b55885db0ac4cff54399b44b06ac89c28ecb790ec",
         intel: "2b0a93254d803557465cb9094bf27bbc7539f56a8792e24c28e1178ce0b66bcb"

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
