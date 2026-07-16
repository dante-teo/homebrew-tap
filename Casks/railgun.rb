cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "09d7f524c1aa3f926cac222857f2ec903ac54c7f1acc3ab0a081f4bc5bbbcc20",
         intel: "bced3cf0d4a7d53917797712d0fb1b56082eb6add52c90e3f8f1ad7867a24b85"

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
