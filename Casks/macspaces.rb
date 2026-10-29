cask "macspaces" do
  version "3.34"
  sha256 "b3a9ade04ae1c0bdea67fe9f33eb3ced17e53eb4482ec24867faa1fcc0bd62a7"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
