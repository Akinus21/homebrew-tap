class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.113"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.113/akai-agent"
    sha256 "1a56da6cf888f08dffbe6f7bce115af56533bfae06c37a8d08d9443469d83b70"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
