class Piece < Formula
  desc "Command-line recorder and uploader for piece.md terminal recordings"
  homepage "https://github.com/shonenada-vibe/piece-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/piece-cli/releases/download/v0.1.2/piece_v0.1.2_darwin_arm64.tar.gz"
      sha256 "59dc286edf405a9894c0db3039277ddeda029ba3afc96456136b42bd08f88be0"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/piece-cli/releases/download/v0.1.2/piece_v0.1.2_darwin_amd64.tar.gz"
      sha256 "14e74252921d1d0fed94e9748389123608251c34bc49bef728f2259767265540"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shonenada-vibe/piece-cli/releases/download/v0.1.2/piece_v0.1.2_linux_arm64.tar.gz"
      sha256 "534fcfa5365ab919c9e71d8ff395db031ebd8e0acc262f5ecf7e8731e7985815"
    elsif Hardware::CPU.intel?
      url "https://github.com/shonenada-vibe/piece-cli/releases/download/v0.1.2/piece_v0.1.2_linux_amd64.tar.gz"
      sha256 "b2947fe67a7d0246c66ab25186af8086e750f9767b7c6abbb4731dd1aaf4fac1"
    end
  end

  def install
    bin.install "piece"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/piece version")
  end
end
