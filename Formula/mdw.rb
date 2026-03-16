class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.1/mdw-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "11ac89645aea59f85f8228e735e8227a0a79d4174c3269d22608716b79e6bfe4"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.1/mdw-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "df6162c68b53528df1106142021549919ec916781fb738bd4b309dea7e371e8f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.12.1/mdw-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "657569112d5538c596fc0841aed3c24036b7b5a3c7056a85cd7b0ea4d5eb043f"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
