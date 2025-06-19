class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/Benji377/tooka/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "REPLACE_WITH_TAR_GZ_SHA256"
  license "MIT"
  head "https://github.com/Benji377/tooka.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/tooka-cli")
  end

  test do
    assert_match "Tooka", shell_output("#{bin}/tooka --help")
  end
end
