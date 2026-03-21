class Mdw < Formula
  desc "A terminal-based Markdown viewer with live-reload"
  homepage "https://github.com/shonenada-vibe/mdw"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.1/mdw-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "810f48d7b445ea53a398dcc99313e3118c085fcf615a42cf9624aa879b1fed2d"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.1/mdw-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "f87f13f1bf5435cefa9840ea11d07ef4b00679f874ed9f52228a3e9c68a5c51b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/mdw/releases/download/v0.15.1/mdw-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e3a693fbf35d686c292a5bfddd8983ca2cddcdf0a67a617614c7758a2ebaa83"
    end
  end

  def install
    bin.install "mdw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdw --version")
  end
end
