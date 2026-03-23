class SearchSessions < Formula
  desc "Fast CLI to search across Claude Code and OpenClaw session history"
  homepage "https://github.com/sinzin91/search-sessions"
  url "https://github.com/sinzin91/search-sessions/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ae3c06c81bc45ec7bf52e7e2a47ac3605b995579e35840ca196e8a3afa27d853"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Search Claude Code", shell_output("#{bin}/search-sessions --help")
  end
end
