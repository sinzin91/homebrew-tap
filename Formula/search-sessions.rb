class SearchSessions < Formula
  desc "Fast CLI to search across Claude Code and OpenClaw session history"
  homepage "https://github.com/sinzin91/search-sessions"
  url "https://github.com/sinzin91/search-sessions/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4e1aa7634273286f020e3b50588db2c464713b7c0066d5ada28fc811e4f45cb2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Search Claude Code", shell_output("#{bin}/search-sessions --help")
  end
end
