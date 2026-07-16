cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "6f29582da805c9a42948e77811b4f3ed70ede6e38aebfdc1b332018a8b1efeaf",
         intel: "ef263ff55250a117cb504e450d731354fa599fbb8887c53ba09c94b70d5ca1c6"

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
