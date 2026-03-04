class SearchSessions < Formula
  desc "Fast CLI to search across Claude Code and OpenClaw session history"
  homepage "https://github.com/sinzin91/search-sessions"
  url "https://github.com/sinzin91/search-sessions/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "efa14ac867406923609310b412dd3771045c5e0e42f381a785e56afcaba37bb5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Search Claude Code", shell_output("#{bin}/search-sessions --help")
  end
end
