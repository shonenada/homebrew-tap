class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.1/mdw-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "177463781a09afc8f6903d6a318500faa9ab8eecb777be59c849ba667a47d929"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.1/mdw-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "bc85a945a125d8ea3ee999239a2255835cf5d5e26a4e7d262210f2a64867850d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.1/mdw-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd9533a46932f6bf3e9a55fa1895561e487b75e9ac415fdf23fd832f826ac626"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
