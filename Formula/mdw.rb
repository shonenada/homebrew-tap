class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.3.0/mdw-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "97e71fa9520ac0821fdebcbc1d357759164f8705cb1fd5968240ed3f9f3d663c"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.3.0/mdw-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "1852bdd548cf06ac146560f90ddad6b4295a5508be739fcc279d9402700e6cb6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.3.0/mdw-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd79c87718716568b7c62c51039f2cb3f4645780767a4dbbf1d188b012853c0d"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
