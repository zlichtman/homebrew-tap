cask "tape" do
  version "1.33"
  sha256 "511b2beec0d557e7c9f05a5a28cb8b0b1aab57542528213e46c8c2bff5323c1a"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
