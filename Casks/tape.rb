cask "tape" do
  version "1.28"
  sha256 "2afa4edd46c363bda63ccc4b02459c730d75caaf036ec93b395e4fa6a97a8b69"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
