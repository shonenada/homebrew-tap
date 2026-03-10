class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.7.0/mdw-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "9de67321712db89e97a0748d541d18c78789bb00e083e3d00c45009585b391b4"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.7.0/mdw-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee3c5743620d1f41f34e5ae75994b452a0bcad3e4f40786f4fd3a605119e611d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.7.0/mdw-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63c85326778313002bc494119bc176cd31357858168982afbdaebc7750dd83b9"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
