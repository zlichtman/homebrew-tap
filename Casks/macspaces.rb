cask "macspaces" do
  version "3.1"
  sha256 "71421775ee1598044db2979b64d2cf2e8ed581805aa76aeac96305fb3304e394"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
