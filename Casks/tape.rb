cask "tape" do
  version "1.1"
  sha256 "db8308ae23ee430ac8c3f86590ecd113451b4794258df64d57ae4ac0eba5e3f6"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
