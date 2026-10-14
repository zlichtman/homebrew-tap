cask "folio" do
  version "2.24"
  sha256 "586a73f9d159da94227ff147c7e9f06853c186ec761c447ebdb89e7415b49ca9"

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
