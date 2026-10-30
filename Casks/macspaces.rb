cask "macspaces" do
  version "3.58"
  sha256 "46f411f50149117a856a598121952cbbc23767419cfd55f55b0483f23ef33d55"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
