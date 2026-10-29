cask "macspaces" do
  version "3.36"
  sha256 "c01cb6d97b6f3199ccae66c0e6e626a566cf5ef8b0d89bf4ea108ae9c97f07ff"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
