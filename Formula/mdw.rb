class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.4.0/mdw-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "7160d53798e82ef24cd25aefc7cb3a93b534164a3aa469a2fbde1aa84f931158"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.4.0/mdw-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b43e1c9aec0a4f2fee8674c85c640bc07e7c47750feee6f2d31bdffcaaedd78"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.4.0/mdw-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f2b5839e8c455db064b2262b1758547352f82addad8c7e74c8e59a38b73fce6"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
