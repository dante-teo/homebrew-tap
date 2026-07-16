cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "640ae86b83b40e09a106f5d15793c8e48d45cb80c77a092450e9b2e5107abebf",
         intel: "968b65f4402a57541dd5cfdc79a2724c5d6a5efdf5f44e0d9dfcffafefc26f6c"

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
