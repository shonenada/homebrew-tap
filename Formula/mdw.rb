class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.6.0/mdw-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6786c5ded87ece4d45c04fbc439cab614b04ca0c9f1f507d229f3f67432306e8"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.6.0/mdw-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d2a7aebb6986cb6195fe69675e821702c056216e3b0b5b86f2fec439557a309"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.6.0/mdw-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75ba5813b56bd7fcc267e10362ad6dcc7be25f953a980714728307389b2c176f"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
