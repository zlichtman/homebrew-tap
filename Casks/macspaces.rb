cask "macspaces" do
  version "2.79"
  sha256 "e7cb1d6b888a0283363f2804fd30b2e7c37bcf25da44e5b4a28d2e2eb560f7c1"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
