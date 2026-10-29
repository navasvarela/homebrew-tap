cask "dbrover" do
  version "0.14.0"
  sha256 "541618dcb257a11fd9751cdfe7d499f56c9076c62931978e56f5da85446bbd1d"

  url "https://github.com/navasvarela/dbrover/releases/download/v#{version}/dbrover-#{version}-macos-universal.dmg"
  name "DbRover"
  desc "Desktop database tool for PostgreSQL, MySQL, SQLite and more"
  homepage "https://dbrover.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "DbRover.app"
  binary "#{appdir}/DbRover.app/Contents/MacOS/dbrover"

  zap trash: [
    "~/Library/Application Support/dbrover",
    "~/Library/Caches/io.github.navasvarela.dbrover",
    "~/Library/Saved Application State/io.github.navasvarela.dbrover.savedState",
  ]

  caveats <<~EOS
    DbRover isn't notarized by Apple yet, so macOS blocks its first launch with
    "Apple could not verify DbRover". Open System Settings > Privacy & Security,
    scroll down to the message about DbRover and click Open Anyway.

    Or, if you trust this download, remove the quarantine flag before opening it:
      xattr -dr com.apple.quarantine "#{appdir}/DbRover.app"

    DbRover updates itself from then on, so `brew upgrade` leaves it alone.
  EOS
end
