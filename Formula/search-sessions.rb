class SearchSessions < Formula
  desc "Fast CLI to search across Claude Code and OpenClaw session history"
  homepage "https://github.com/sinzin91/search-sessions"
  url "https://github.com/sinzin91/search-sessions/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "407c2f87002da6b2bfa026a11725cd45951f96dccad3ca4080338c9642524e90"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Search Claude Code", shell_output("#{bin}/search-sessions --help")
  end
end
