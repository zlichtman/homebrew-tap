cask "tsukumo" do
  version "2.11"
  sha256 "6e1599eb6a0b66a4b1062ebf854520e09b9bfe543266dab534904180e91fb375"

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
