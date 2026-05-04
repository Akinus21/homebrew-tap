class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.68"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.68/aktools"
  sha256 "172bb7ab2cedf102c9804677a861bee81dc630d15c7c755e9059fbea657b8054"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
