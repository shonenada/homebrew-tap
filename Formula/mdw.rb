class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.1/mdw-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "5285606fec7a838dd2440a876a1b4d8b61b4c3aaed7da1be45e9f5531b632f26"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.1/mdw-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "310976057fd84dda450049397e1a00e1b219a8076f5230676a1bb578ff94e2c5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.1/mdw-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a608b01610c44b1b37caf3c4739c99300009eb6593a2aecc64f70503e8084be"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
