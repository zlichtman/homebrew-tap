cask "tape" do
  version "1.23"
  sha256 "396af65a9bcacbac19fe7d8c11e630c0aaec440bf1e7477f38ef80c86875052c"

  url "https://github.com/zlichtman/Tape/releases/download/v#{version}/Tape.dmg"
  name "Tape"
  desc "Keyboard-driven scrolling window strip"
  homepage "https://github.com/zlichtman/Tape"

  auto_updates true
  depends_on macos: :ventura

  app "Tape.app"

  uninstall quit: "dev.opensource.Tape"
end
