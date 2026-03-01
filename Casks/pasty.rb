cask "pasty" do
  version "0.1.2"
  sha256 "37f44d51a1ad2dba456dd98bd91a63b3e5f76588692f2233ae3e8ab2c748458b"

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
