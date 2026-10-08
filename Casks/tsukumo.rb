cask "tsukumo" do
  version "2.06"
  sha256 "27c05d1de8597e401068e05b466e9a7dbf9f977bc1547c1667262871f82a780a"

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
