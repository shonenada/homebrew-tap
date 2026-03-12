class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.10.0/mdw-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "02938f098755b13a18f71d00e78a607cadc8209ff643bae3f496592826a43ac5"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.10.0/mdw-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "1821547b5b9dea54afec390c301c12566508ea0005d1e79b93f9d441e0726ea0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.10.0/mdw-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa6983c1f224e65f2d33c4e639b87c83c19097f32d90d7da8b217db292754077"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
