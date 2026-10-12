cask "tape" do
  version "1.24"
  sha256 "ce345efc082fc79b66d5acb05131caeb6638be3ac70edb21503a147f8f0f80bf"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
