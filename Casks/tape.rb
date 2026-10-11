cask "tape" do
  version "1.2.1"
  sha256 "696e2522fe32dfdf9e151150db1f8533da2067b6e39b52fdd91780b6d874bea8"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
