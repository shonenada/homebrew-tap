class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.2/mdw-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "f1a6bd6a1aca13f00a577381e01777fe88039608610103f4f960c17b9ea0b7cf"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.2/mdw-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "b2acd7d9c0dc32ecbcb5902df0722224ab10d9b0181ec42b5b5661c67bb4be05"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.2/mdw-v0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e731a98c916dfa0aa57f8986a697a65ba8ab1751d78fd444271df6540c0dc2ce"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
