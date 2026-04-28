class Wirecat < Formula
  desc "Terminal packet analyzer for tcpdump with a Wireshark-style TUI"
  homepage "https://github.com/shonenada-vibe/wirecat"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.3/wirecat-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9ca31bf0b95531ef9ca14c047fb17f62936f820f5e8ea18f213e3c67c6021dfe"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.3/wirecat-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "b30f92c790339dcc591ce5ff21f2128b0955992e324906cae8da587016bc63ce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.3/wirecat-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f05d9f6819626d26da3f106daef5b1881f112c1135097e0af7b0f34e5d91a81"
    end
  end

  def install
    bin.install "wirecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirecat --version")
  end
end
