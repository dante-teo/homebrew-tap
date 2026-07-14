cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "174d479557be6d9c287995c35902d0d2f47b4ce901d40e0769078f30d30881d8",
         intel: "5e60a3e2215fd6c1e37719887bf97b5d2164208299636e872821d7cb6ba72ec1"

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
