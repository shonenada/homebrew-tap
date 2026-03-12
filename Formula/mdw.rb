class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.9.0/mdw-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "072936f2902833cc12a9eaeb981623ce5c70347fe1781bfb0a7d30b8e5e5683c"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.9.0/mdw-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "62f1c16340ecb16259d56e0a7017da1087a310fb5abf4ca1fc8d962c81c57777"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.9.0/mdw-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78c086c917ca9ce0e862ca8063630f70de6259bfd0f2f952382814366fc86cbd"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
