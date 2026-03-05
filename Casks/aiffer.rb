cask "aiffer" do
  version "0.1.2"

  on_arm do
    sha256 "762fc4bd47e43ba9fe10d3f75ef92108ede89ebfe95828a40158f51d49209203"
    url "https://github.com/shonenada-vibe/aiffer/releases/download/v0.1.2/aiffer_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "879b1c520e44257e4c913fbf60609eb4b62c11a15b364394dae2c221b71baea5"
    url "https://github.com/shonenada-vibe/aiffer/releases/download/v0.1.2/aiffer_x64.app.tar.gz"
  end

  name "aiffer"
  desc "aiffer desktop app"
  homepage "https://github.com/shonenada-vibe/aiffer"

  app "aiffer.app"
end
