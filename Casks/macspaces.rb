cask "macspaces" do
  version "3.6"
  sha256 "bc8eebb7d9496f8e4b921e66a86dee65b238392ccee2d63551b6bd31920a59a1"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
