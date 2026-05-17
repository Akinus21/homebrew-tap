class OllamaWorker < Formula
  desc "Distributed Ollama worker node for ollama-queue"
  homepage "https://github.com/Akinus21/ollama-queue-agent"
  version "0.0.115"
  license "MIT"

  on_linux do
    url "https://github.com/Akinus21/ollama-queue-agent/releases/download/v0.0.17/ollama-worker"
    sha256 "8771667469507b9584afd49406a81d1f8950419c266ba1176cb0319d17ede07a"
  end

  def install
    bin.install "ollama-worker"
  end

  test do
    assert_match "ollama-worker", shell_output("#{bin}/ollama-worker --help")
  end
end
