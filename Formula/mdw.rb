class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.0/mdw-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "b999231c50387d97a6705f21d7007984d8f4013ef2706dca45ca72027dce3d10"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.0/mdw-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "8f49db426271ad1464193b61412f35e0897fda4aac735304afaedbc6175e99ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.0/mdw-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94bc4bd389ff4d609c8f4b653a94e2393e4e2603046b0a6dd825a06c7661830b"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
