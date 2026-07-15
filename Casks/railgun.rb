cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "ba567e4ee56f4339b3593fa49665f805409430c8dccd061a13a123e0bd11e46a",
         intel: "71ea644c19c02bb2fbbc8c49ef2c36a57b820256149e8f8b622393c0296d14e7"

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
