class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/tooka-org/cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "6cba33272f49cc46f07247cb4d607a8dcbf415a0bc0aa16798c2faea2482d01e"
  license "GPL-3.0-only"
  head "https://github.com/Benji377/tooka.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "tooka-cli")
  end

  test do
    assert_match "tooka #{version}", shell_output("#{bin}/tooka --version")
  end
end
