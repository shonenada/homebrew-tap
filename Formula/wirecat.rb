class Wirecat < Formula
  desc "Terminal packet analyzer for tcpdump with a Wireshark-style TUI"
  homepage "https://github.com/shonenada-vibe/wirecat"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.2/wirecat-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "22986636d3d5a69af881d5c01752da7ac95dc108a2bceadbf2e7c5caf0bd2d63"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.2/wirecat-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "e92f250f92e38bf99cd9b672540f52771d115b58530e1f780694c2aadcd0874f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.2/wirecat-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db010e796b10ef55019ae8bf2e77b1f76830e18e53609102f9072be635c30dfc"
    end
  end

  def install
    bin.install "wirecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirecat --version")
  end
end
