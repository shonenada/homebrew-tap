class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.11.0/mdw-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "700fd093439dbf1070c30783f1556e906e75baaec0b7d1f869369e565b695dca"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.11.0/mdw-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e58820ffc5b133c9dd2dc7c045e20a9337ee176bc7c859d617ca179c9148e6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.11.0/mdw-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec6d9d39c84635dbac94c1bd17489200cc8494a5c6a1b23472fba5721198b33a"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
