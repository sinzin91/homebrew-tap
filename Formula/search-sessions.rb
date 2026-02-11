class SearchSessions < Formula
  desc "Fast CLI to search across Claude Code and OpenClaw session history"
  homepage "https://github.com/sinzin91/search-sessions"
  url "https://github.com/sinzin91/search-sessions/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a05aaf8944af06704957a6ba4727a617de92fe97e01c47024df6b7abeab7c704"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Search Claude Code", shell_output("#{bin}/search-sessions --help")
  end
end
