class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.13.0/mdw-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "31739b7e8cc611e0eb2467090719309eb190362fa34a1492a770cef7e68bbce1"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.13.0/mdw-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "12880969e75cf2dd8a55766f612e16b35e430c1f411673d9ef9afc33ce09a2cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.13.0/mdw-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29d0bdf15abe08db6b9f709caee2daa7d4ee123e4f777051af8e70afeb6f9678"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
