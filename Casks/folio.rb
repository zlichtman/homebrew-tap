cask "folio" do
  version "2.15"
  sha256 "5dec73af9b800492dc0b8bbfb3e86b2a06eca726a03fab3ae222e71f555bb12a"

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
