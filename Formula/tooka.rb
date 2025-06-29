class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/tooka-org/tooka/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "6f412ff18076130e4facc1fef90c62e288d54c94554a249628a259e3b332c45b"
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
