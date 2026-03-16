class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.1/mdw-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "3f406e180aa550f911a0c3673685aab27017a5298c9ec76ac06dd457d1754768"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.1/mdw-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "98f51bad68ab369ae9e98da42613ace4b9358b35b91c140d62514ae1d1f54160"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.1/mdw-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "408aed39d2c263083a2ad7dad9a21e63256097d6e4600d06903c7bf6a73f132c"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
