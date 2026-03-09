class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.5.0/mdw-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "22e1a71de111b16430934023b2c9699ea44aa7d91c1fe46e209f6a0c1ef21ae1"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.5.0/mdw-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae0be8e7904b4a865dbd934773c785cd6f5eb088bba2716599a19f360b33478b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.5.0/mdw-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e60985bfb066ce64c11b6e906fb98f4c23c7382c1de22e0863790f68ddea22f5"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
