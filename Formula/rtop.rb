class Rtop < Formula
  desc "htop, but with time-series charts, gauges, GPU/NPU tracking, and Docker filtering"
  homepage "https://github.com/regisrex/rtop"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/regisrex/rtop/releases/download/v#{version}/rtop-v#{version}-macos-arm64.tar.gz"
      sha256 "2278a89edaf7abc9b18d82ab94cb487d894f65178d4c265c89e0e77ef637a98c"
    end
    on_intel do
      url "https://github.com/regisrex/rtop/releases/download/v#{version}/rtop-v#{version}-macos-x86_64.tar.gz"
      sha256 "80efb25037332d0af32808165da939ffc835121a209e1078bc799b62b8e37122"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/regisrex/rtop/releases/download/v#{version}/rtop-v#{version}-linux-arm64.tar.gz"
      sha256 "ea50e875d7176c31e21ef0e803dde4d2f15f65308cf80336b13acda7072023a0"
    end
    on_intel do
      url "https://github.com/regisrex/rtop/releases/download/v#{version}/rtop-v#{version}-linux-x86_64.tar.gz"
      sha256 "fc23db846a390dca8b94132c8418354c5d3e83b2cbd5dac33138d53ff318e9f5"
    end
  end

  def install
    bin.install "rtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rtop --version")
  end
end
