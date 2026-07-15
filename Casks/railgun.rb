cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "23cdaa8fe60581f7038e470f1085703d91546a7981d37c0630afcb3abd4d2deb",
         intel: "a552c2018502420aa3902b909c39ef180973dfc6bc8d7a9de63cc945d6d41779"

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
