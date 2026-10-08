cask "tsukumo" do
  version "2.07"
  sha256 "5f7a3e1d4885b9072eafd977badc487414b7030329210d95d0c4f7d32fb1ccea"

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
