cask "tape" do
  version "1.22"
  sha256 "b41d6e6ab64435be66db7beb9fe1b9c573f639245c300b3bedc7570ec02c13ff"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
