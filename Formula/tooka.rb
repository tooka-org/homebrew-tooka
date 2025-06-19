class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/Benji377/tooka/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "1b8b3219043d5292bd457721ab36858ee51533e8825bffd7f439848ef1fa596b"
  license "MIT"
  head "https://github.com/Benji377/tooka.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/tooka-cli")
  end

  test do
    assert_match "tooka #{version}", shell_output("#{bin}/tooka --version")
  end
end
