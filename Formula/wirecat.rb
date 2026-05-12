class Wirecat < Formula
  desc "Terminal packet analyzer for tcpdump with a Wireshark-style TUI"
  homepage "https://github.com/shonenada-vibe/wirecat"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.4/wirecat-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "8cc162e5bd72786b82d682b930470853780c10bce7d7f3081dc1e6890b4c9d68"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.4/wirecat-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "4041c728088610e32a127a9c050c932197094734cf1f39eb6812cc29c161b46e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/wirecat/releases/download/v0.1.4/wirecat-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3f7397bd3cdf06635daf484968c11a119cd54d0ab2232ea27eec71b8acb5ea1"
    end
  end

  def install
    bin.install "wirecat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirecat --version")
  end
end
