cask "folio" do
  version "2.17"
  sha256 "2c571cab94e7877f4acfe0e2e8c01a466319d79d26f487fa71492de23027bba7"

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
