class Akclip < Formula
  desc "Clipboard utility for capturing stdin"
  homepage "https://github.com/Akinus21/akclip"
  url "https://github.com/Akinus21/akclip/releases/download/v0.0.73/akclip.tar.gz"
  sha256 "ac9c780fb099c3237c93727e3fdc02c7375f171236f077a01193f7f90b23b738"
  license "MIT"
  version "v0.0.73"

  def install
    # The tarball extracts to akclip/ directory
    # The binary is at akclip/target/release/akclip
    bin.install "akclip/target/release/akclip"
  end

  test do
    system "#{bin}/akclip", "--help"
  end
end
