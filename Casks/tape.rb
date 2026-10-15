cask "tape" do
  version "1.30"
  sha256 "2e9e43282f19b4e78d8806c7076d3b8fd9102d6f86d4524e388f3444730a0c31"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
