cask "tape" do
  version "1.25"
  sha256 "a929c970c669e55074bb22c365ef65f4f9be7a1e7d68075056872fcfd3aaea1d"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
