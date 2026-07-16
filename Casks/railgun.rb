cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "7d67cf0bba441f5136100a4161ea3419affe001bc697d97b09b96f0345121448",
         intel: "7701ba80958c1f20177db838c4d134b5cecf8b415c34526c4190dd554feca3d5"

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
