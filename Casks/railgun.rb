cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "7bb05b828a2b6627b903bf9e93a5e4b5fe2222f4eb32c57bca9faaf507a3de77",
         intel: "89a536da54a8c1e744b26e0b97ac8d73029111afa3a8820c33ee839f6b329c8f"

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
