cask "mixdb" do
  version "1.0.2"
  sha256 "c2fcf89051af57fcf41f4aed5fa67386fb8996cbe4b37a64ba6b4c841cf2835a"

  url "https://github.com/pthm/mixdb/releases/download/v1.0.2/MixDB-1.0.2-macos.dmg"
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
