class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.49"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.49/akai-agent"
    sha256 "af0cfd6385e59500fa47fa398838a58fa515b854520a6ab49eee2dc70213ec14"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
