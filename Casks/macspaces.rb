cask "macspaces" do
  version "2.53"
  sha256 "aadafe84435ff61002283943cab30f1c9696e9f63c6c589e0d21fad4281bf9cd"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
