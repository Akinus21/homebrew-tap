class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.13"
  license "MIT"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.13/akai-agent"
    sha256 "8c0c3875643f1e83136c301144e5c4f4f625c3a714449337c08ae51a5380dce3"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
