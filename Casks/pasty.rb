cask "pasty" do
  version "0.1.0"
  sha256 "66b2d7940bd846373d5fa05bc93f234b847dbd67f0ab1f5204f584474fccb847"

  url "https://github.com/shonenada-vibe/pasty/releases/download/v#{version}/Pasty-#{version}.zip"
  name "Pasty"
  desc "macOS menu bar clipboard manager"
  homepage "https://github.com/shonenada-vibe/pasty"

  depends_on macos: ">= :sonoma"

  app "Pasty.app"

  zap trash: [
    "~/Library/Preferences/com.pasty.app.plist",
  ]
end
