class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.0/mdw-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d52e9477d04d4304ecc2588b6734a952041f278d8e872e804831c2914561031"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.0/mdw-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "97ddb40cc3829fcdb532e666f177663478d6731d51f29b753b621ec05e2b7894"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.14.0/mdw-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41b361be14ae5ba83bf031397c4a9ab52ccabcd4465e319bfd0293e1942c7ca0"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
