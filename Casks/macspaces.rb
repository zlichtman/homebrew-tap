cask "macspaces" do
  version "3.27"
  sha256 "66a489e257995f1e404f0d2b23bbd7c895d3ebc3249671c426642ab7337dfcc4"

  url "https://github.com/zlichtman/MacSpaces/releases/download/v#{version}/MacSpaces.dmg"
  name "MacSpaces"
  desc "Notch workspace with widgets, music controls, and a file tray"
  homepage "https://github.com/zlichtman/MacSpaces"

  auto_updates true
  depends_on macos: :ventura

  app "MacSpaces.app"

  uninstall quit: "dev.opensource.MacSpaces"
end
