class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.19"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.19/aktools"
  sha256 "3151795607efe1a3a19721bebd51192811d085464b32e7f4111d50aa29471717"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
