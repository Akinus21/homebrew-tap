class OllamaWorker < Formula
  desc "Distributed Ollama worker node for ollama-queue"
  homepage "https://github.com/Akinus21/ollama-queue-agent"
  version "0.0.4"
  license "MIT"

  on_linux do
    url "https://github.com/Akinus21/ollama-queue-agent/releases/download/v0.0.4/ollama-worker"
    sha256 "3023cee4445a63ceb622bbcf50392f817319cf091fc5d70a254d69691b129846"
  end

  def install
    bin.install "ollama-worker"
  end

  test do
    assert_match "ollama-worker", shell_output("#{bin}/ollama-worker --help")
  end
end
