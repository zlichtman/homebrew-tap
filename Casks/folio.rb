cask "folio" do
  version "1.0.0"
  sha256 "86f2758fb9e3597f1ebed0c3b52cba515c7b53d2648f7d1dc126cb548e466a7b"

  url "https://github.com/zlichtman/Folio/releases/download/v#{version}/Folio.dmg",
      verified: "github.com/zlichtman/Folio/"
  name "Folio"
  desc "Visual library for images with local search and automatic tags"
  homepage "https://zlichtman.com/folio"

  auto_updates true
  depends_on macos: :sonoma

  app "Folio.app"

  uninstall quit: "org.lumashelf.app"

  # Never zap ~/Library/Application Support/LumaShelf: it holds the user's library.
  zap trash: [
    "~/Library/Caches/org.lumashelf.app",
    "~/Library/HTTPStorages/org.lumashelf.app",
    "~/Library/Preferences/org.lumashelf.app.plist",
    "~/Library/Saved Application State/org.lumashelf.app.savedState",
  ]
end
