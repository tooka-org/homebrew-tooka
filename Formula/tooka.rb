class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/tooka-org/tooka/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "0582dce8a5f241f7cce78be04fcee51cc5e2c175df2ff524147018f755ccd1f6"
  license "GPL-3.0-only"
  head "https://github.com/tooka-org/tooka.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tooka"
  end

  test do
    assert_match "tooka #{version}", shell_output("#{bin}/tooka --version")
  end
end
