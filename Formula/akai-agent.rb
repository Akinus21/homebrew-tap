class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.151"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.151/akai-agent"
    sha256 "a818d47c32fe973a0dbc7dfe9ab399a016e17d47be13d83eeecf6bff2562cac6"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
