class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/tooka-org/tooka/archive/refs/tags/null.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
