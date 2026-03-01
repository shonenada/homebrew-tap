class CodexSession < Formula
  desc "TUI session manager for OpenAI Codex CLI"
  homepage "https://github.com/shonenada/codex-session"
  version "0.0.3"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/shonenada/codex-session/releases/download/v#{version}/codex-session-darwin-arm64.tar.gz"

  def install
    bin.install "codex-session"
  end

  test do
    system "#{bin}/codex-session", "--version"
  end
end

