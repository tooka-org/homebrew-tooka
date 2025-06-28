class Tooka < Formula
  desc "Fast, rule-based CLI tool for organizing files"
  homepage "https://tooka.deno.dev"
  url "https://github.com/tooka-org/tooka/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "d7ce3d212a8acc5bd706ac48dc60318cbf1ae7769dbc5603b70b12fc4f60ce82"
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
