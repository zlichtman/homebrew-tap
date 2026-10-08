cask "tsukumo" do
  version "2.09"
  sha256 "2f442155292ed9c28b059e727589f80794900fc8f1976003594d16a4445bbe36"

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
