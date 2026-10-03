cask "macspaces" do
  version "2.43"
  sha256 "5515f6466b31c9f12bfce05628d46d366d4bbc0ce59cdcf6ef9a4fc73b6f9b0f"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
