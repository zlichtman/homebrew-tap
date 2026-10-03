cask "macspaces" do
  version "2.45"
  sha256 "f28aa62189ff22e988c30bed1e02ffb33c83f0877c79815e381b9c278eb0ad56"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
