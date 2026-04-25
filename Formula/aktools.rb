class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.33"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.33/aktools"
  sha256 "909e5d2b3eee01117cd8b09a9183453400aaa49b68558e067284d957d16d649e"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
