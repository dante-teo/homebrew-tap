cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "360da0859c383ab3045c11615ebbb9e2b5ca9ee2693806967200a2946f1db48c",
         intel: "dc8e08647505fa4b00c213c56e122b67a4c58a0c00db45e04c2f716e8491acf5"

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
