cask "tsukumo" do
  version "2.10"
  sha256 "9e60a61edca1b16d9b34713acf56d7a0beb4bec1a53780304ce83e664fce573b"

  url "https://zlichtman.com/downloads/Tsukumo-#{version}.dmg"
  name "Tsukumo"
  desc "Side dock for your AI bots, guarded by an on-device assistant"
  homepage "https://zlichtman.com/open-source#tsukumo"

  livecheck do
    url "https://zlichtman.com/downloads/tsukumo.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Tsukumo.app"

  uninstall quit: "com.zlichtman.tsukumo.mac"
end
