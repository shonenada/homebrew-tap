class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.0/mdw-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "95af8a588a28a2cd0556b665c0864c817a39492c30278312a4d495da09583520"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.0/mdw-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8c45ee58b94814789c8ede5d32615a13095edb7e1c66c33b8e2761ef6bf5fec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.8.0/mdw-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24f9500b852875078b44c05579748f9c9afd4d1274811a2b6cf3e9bfebf36dd8"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
