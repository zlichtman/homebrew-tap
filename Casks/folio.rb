cask "folio" do
  version "2.10"
  sha256 "f3c76fe3012738e8507ead122ccbfd64f55e6f42007d1eb0dbd01fd40abe7428"

  url "https://github.com/zlichtman/Folio/releases/download/v#{version}/Folio.dmg",
      verified: "github.com/zlichtman/Folio/"
  name "Folio"
  desc "Visual library for images with local search and automatic tags"
  homepage "https://zlichtman.com/folio"

  auto_updates true
  depends_on macos: :sonoma

  app "Folio.app"

  uninstall quit: "org.lumashelf.app"

  # Never zap ~/Library/Application Support/Folio (LumaShelf before 1.8): it holds the user's library.
  zap trash: [
    "~/Library/Caches/org.lumashelf.app",
    "~/Library/HTTPStorages/org.lumashelf.app",
    "~/Library/Preferences/org.lumashelf.app.plist",
    "~/Library/Saved Application State/org.lumashelf.app.savedState",
  ]
end
