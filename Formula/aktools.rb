class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.54"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.54/aktools"
  sha256 "a9545c945d0f9475b7fa4b97406e28412d01f579ef73de4331950b85d5acfe2d"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
