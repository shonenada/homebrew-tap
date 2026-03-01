class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.2.0/mdw-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ebc894cc5605047981320de8fb9e23c34930a7dbaab1df237a43a459591fbff7"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.2.0/mdw-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1fca56511d7dbca61f9ed9b964461058bdedb6d82ede92c159567fe186eab0a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.2.0/mdw-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2385c2dcf3f76a60455bc272e814295d1fa0324d3e7e227152db9cb5e0e6455"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
