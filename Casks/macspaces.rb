cask "macspaces" do
  version "2.82"
  sha256 "4c7b0e4012a018f5d42437afd280207bc354aca48d5a86689815cbfd1a0f84c3"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
