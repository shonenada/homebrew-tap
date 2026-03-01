class CodexSession < Formula
  desc "TUI session manager for OpenAI Codex CLI"
  homepage "https://github.com/shonenada/codex-session"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/shonenada/codex-session/releases/download/v#{version}/codex-session-darwin-arm64.tar.gz"
      sha256 "85751d96f7351b2fc8dad3f770afdcbc80c4c9b3eead9a93b976988df66efbcb"
    end
    on_intel do
      url "https://github.com/shonenada/codex-session/releases/download/v#{version}/codex-session-darwin-x86_64.tar.gz"
      sha256 "fbbd0e9f2752abb5e846fa93f4ca5db58e8784e0cf407c52712a6fc20580e44f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/shonenada/codex-session/releases/download/v#{version}/codex-session-linux-x86_64.tar.gz"
      sha256 "1210692097ac459b85aefa48e53c993821f315c877b9c795ff291396479d7df7"
    end
  end

  def install
    bin.install "codex-session"
  end

  test do
    system "#{bin}/codex-session", "--version"
  end
end
