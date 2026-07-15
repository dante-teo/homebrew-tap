cask "railgun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "f41409cfa188fae7e9a085e484410b429b42f38f2b899487319f2d9306305198",
         intel: "24a37acf36a16ce02fd0ff0ca0dff24e5ff30cb36a7f42e05513042a9b5a0aad"

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
