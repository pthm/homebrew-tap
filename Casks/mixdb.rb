cask "mixdb" do
  version "1.0.1"
  sha256 "7db9c1ca2e2c3cad57448f16b8abb2a2baf94af4bf38ccba7f9aaef7d6bc5692"

  url "https://github.com/pthm/mixdb/releases/download/v1.0.1/MixDB-1.0.1-macos.dmg"
  name "MixDB"
  desc "Music mix cataloguing and playback app"
  homepage "https://github.com/pthm/mixdb"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "MixDB.app"

  zap trash: [
    "~/Library/Application Support/MixDB",
    "~/Library/Caches/com.mixdb.app",
    "~/Library/Preferences/com.mixdb.app.plist",
  ]
end
