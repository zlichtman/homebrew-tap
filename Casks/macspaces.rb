cask "macspaces" do
  version "2.61"
  sha256 "2a946f0caf2ce2c5f8fe2d019f676e6204186dfdaf82e1f6e24a1484cffbbcaf"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
