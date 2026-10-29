cask "macspaces" do
  version "3.37"
  sha256 "9227e8c1ca9d3c49904cccbd878299b193e7c9891bedcccf4dc4873982d24889"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
