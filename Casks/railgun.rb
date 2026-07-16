cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "0c8e713cec049d267f28aac47cadacb2fa92dd5f515f5abc47c7d5f7733b3818",
         intel: "bcca070e2bfb967ccd85a1e971bedd58959f39c3d79ba231fad2383c7914fc98"

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
