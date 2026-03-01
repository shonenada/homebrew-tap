class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.1.0/mdw-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae341c0963d89aa0d0051acbab09c7592640254c133c595a6e5c08a9e3bc115b"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.1.0/mdw-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "52d7359d14c396654204f5b87c8810f39ce034c70e1cc1f84f676b00010eebc6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.1.0/mdw-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10cb8673165a380cea454c89f0a7645bd49b12bb36b4f3aee1017a4ae6018725"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end

