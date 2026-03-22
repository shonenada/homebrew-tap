class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.2/mdw-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "bc12c3e12ba0a084e46a6794c54047175cf6c78016737e9920973a71d9e31cba"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.2/mdw-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "5a9ed9b15cd38aabc427e088320ac6cefe668379a709635f6e67381734f47218"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.2/mdw-v0.15.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c49cc9d1ce0616021858bd38a7bcba19723b33fb86a0a1db1e59de66d445942"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
