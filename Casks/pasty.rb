cask "pasty" do
  version "0.1.1"
  sha256 "d1879fca1e9468abdd826166748afbe04cf7a858dc5eea3f50b30f3863021ff3"

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
