class Rtop < Formula
  desc "htop, but with time-series charts, gauges, GPU/NPU tracking, and Docker filtering"
  homepage "https://github.com/regisrex/rtop"
  url "https://github.com/regisrex/rtop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f3ff57fc62cc07e26dc4d5bbaff365c3ab46fcb2ff70758a1dd0747642f97c08"
  license "MIT"
  head "https://github.com/regisrex/rtop.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rtop --version")
  end
end
