cask "tape" do
  version "1.31"
  sha256 "3a81cfd8d64d7e02e4f90bdb4858525e4571b6d4c9826acb1808749d6be77569"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
