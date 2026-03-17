class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.0/mdw-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "43a90ccff0d35f61acfa7c4bca23def384b9b23d0845edcf2f5528e9ec8ad626"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.0/mdw-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8136632cb7fd63ef05e6c029f4b55adf6d57062c84633a8e87e8093b3f49645"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.0/mdw-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41f38ce8a677f5ba003371d53126347f0aea083571c0ccb14e9e9f4be63d9c19"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
