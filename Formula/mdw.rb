class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.2/mdw-v0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "d68860e8a55fed534920ab0c301f79f18bd3ea3e11968c8e61076997ed96060a"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.2/mdw-v0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "6d5718480ad30d5f78020316f8c1f15772c48a3ee31a58333e7e55cc964191bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.2/mdw-v0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "865fcc57c98494076658a923131015c520fc567af22581dbe794bee05b0cf48c"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
