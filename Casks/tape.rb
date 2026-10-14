cask "tape" do
  version "1.29"
  sha256 "8b33d61cebfe44193aa56f5ffec4429db12de87f7245112381e6dc1443bd4414"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
