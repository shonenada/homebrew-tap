class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.0/mdw-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "3eb193f03c1def7942238a42fc838eaa7e15e1fe69fdb5a49d5e2cc1502defca"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.0/mdw-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "afcab3c4ac122f16579949e1a519be1a455336567e535cd06ac7e74cdb462677"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.16.0/mdw-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8e435d60c1e4af7884ee1c4f03ecb300e76b83af96c0503d817f821318d022b"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
