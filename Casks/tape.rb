cask "tape" do
  version "1.23"
  sha256 "b1a02b00d6e9e37cbe5ad9f498c85da5f070bb655242cb388c69187e13284dfc"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
