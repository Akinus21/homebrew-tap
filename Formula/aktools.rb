class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.56"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.56/aktools"
  sha256 "0f4ddccbe0f2de3c8cbfbbb062c329523477d0a418d523ca2624feb18b3a2c8d"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
