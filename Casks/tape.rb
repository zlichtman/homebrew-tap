cask "tape" do
  version "1.32"
  sha256 "5fdf1cf0ce40cd5146ff34dc0e0d4d16e85e86ca4dc541c6f0fcc7f8b0a563f2"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
