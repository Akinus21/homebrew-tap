class OllamaWorker < Formula
  desc "Distributed Ollama worker node for ollama-queue"
  homepage "https://github.com/Akinus21/ollama-queue-agent"
  version "0.0.16"
  license "MIT"

  on_linux do
    url "https://github.com/Akinus21/ollama-queue-agent/releases/download/v0.0.16/ollama-worker"
    sha256 "2087f458cf086ff1536012aabb8ce28d5c11f15d7c63c8101453ae840937b86b"
  end

  def install
    bin.install "ollama-worker"
  end

  test do
    assert_match "ollama-worker", shell_output("#{bin}/ollama-worker --help")
  end
end
