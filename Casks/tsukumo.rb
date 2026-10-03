cask "tsukumo" do
  version "1.80"
  sha256 "3a8d1cb319f603cc4de52f24cb176c234ed89177e96605a4f60c071df8226cff"

  url "https://zlichtman.com/downloads/Tsukumo-#{version}.dmg"
  name "Tsukumo"
  desc "Workspace for every coding agent, with KemoSabe"
  homepage "https://zlichtman.com/open-source#tsukumo"

  livecheck do
    url "https://zlichtman.com/downloads/tsukumo.json"
    strategy :json do |json|
      json["version"]
    end
  end

  disable! date: "2026-10-01", because: :discontinued

  auto_updates true
  depends_on macos: :tahoe

  app "Tsukumo.app"

  uninstall quit: "com.zlichtman.kemosabe.mac"
end
