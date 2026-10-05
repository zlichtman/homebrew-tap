cask "macspaces" do
  version "2.66"
  sha256 "7b9d578695a279c0d803c0ee81f2723c4a09d6911c7af5648be5fbeeb9b63498"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :sequoia

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
