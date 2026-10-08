cask "macspaces" do
  version "2.85"
  sha256 "9e43e7578efaaf35fc6e2d59fa5011b5c2b8d966c10d99e0b23b3b73ac232378"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
