class Nightshift < Formula
  desc "Toggle macOS Night Shift from the menu bar or command line"
  homepage "https://github.com/shonenada-vibe/night-shift"
  url "https://github.com/shonenada-vibe/night-shift/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "38a3e4c047315b644a6fa007994c57ec188cea10b12d5154e0c2f410129973ca"
  license "MIT"
  version "0.1.0"

  depends_on :macos

  def install
    system "clang", "-framework", "Foundation", "-framework", "Cocoa",
           "-o", "nightshift", "nightshift.m"
    bin.install "nightshift"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/nightshift --help 2>&1", 1)
  end
end
