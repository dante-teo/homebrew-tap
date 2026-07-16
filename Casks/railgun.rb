cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "06488843f85c7319f0ab8642165335d0b895ce57729f476eb41e0e646c9bce81",
         intel: "23249773776ea7ecfe13959af3501ae33f4af1db8a90d118bb4898567598b745"

  url "https://github.com/dante-teo/railgun/releases/download/v#{version}/Railgun-#{version}-#{arch}.zip"
  name "Railgun"
  desc "AI coding agent for local development workflows"
  homepage "https://github.com/dante-teo/railgun"

  depends_on macos: :ventura

  app "Railgun.app"

  zap trash: [
    "~/Library/Application Support/Railgun",
    "~/Library/Caches/sh.railgun.desktop",
    "~/Library/Preferences/sh.railgun.desktop.plist",
    "~/Library/Saved Application State/sh.railgun.desktop.savedState",
  ]
end
