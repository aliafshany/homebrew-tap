cask "firelink" do
  version "1.4.2"
  sha256 "204c12ad3ff5923c3b273e00674f0af3cf26a83bcbd7039572660caf2bd11508"

  url "https://github.com/nimbold/Firelink/releases/download/v#{version}/Firelink_#{version}_macOS-ARM64.dmg"
  name "Firelink"
  desc "Download manager for direct files, browser handoffs, media, and playlists"
  homepage "https://github.com/nimbold/Firelink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Firelink.app"

  zap trash: [
    "~/Library/Application Support/com.nimbold.firelink",
    "~/Library/Caches/com.nimbold.firelink",
    "~/Library/Logs/com.nimbold.firelink",
    "~/Library/Preferences/com.nimbold.firelink.plist",
    "~/Library/WebKit/com.nimbold.firelink",
  ]
end
