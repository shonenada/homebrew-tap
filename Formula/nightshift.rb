class Nightshift < Formula
  desc "Toggle macOS Night Shift from the menu bar or command line"
  homepage "https://github.com/shonenada-vibe/night-shift"
  url "https://github.com/shonenada-vibe/night-shift/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "572f604ed326cd84d52ba28bbe612adcc24ce8ad5b17b68b240c417a6381765f"
  license "MIT"
  version "0.2.0"

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
