cask "tape" do
  version "1.26"
  sha256 "42166beef4adf915fbb1196b9ea087ecb9a3663e27459dc98b5ec521bc1b4d98"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
