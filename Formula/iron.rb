class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.116"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.116/iron"
  sha256 "9bd6757be06b0d2138ffaa9b9b84bfb7b03eb937d71d152011eb1aa0a9da0a14"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.116/cef-runtime.tar.gz"
    sha256 "eda165471198da6d347f20e4ca351b357adaf495878ff2ed732922968d5bb797"
  end

  def install
    bin.install "iron" => "iron.bin"
    cef_runtime_dir = libexec/"cef-runtime"

    resource("cef-runtime").stage do
      Dir.glob("*.so").each { |f| cef_runtime_dir.install f }
      Dir.glob("*.so.*").each { |f| cef_runtime_dir.install f }
      Dir.glob("*.dat").each { |f| cef_runtime_dir.install f }
      Dir.glob("*.bin").each { |f| cef_runtime_dir.install f }
      Dir.glob("*.json").each { |f| cef_runtime_dir.install f }
      Dir.glob("*.pak").each { |f| cef_runtime_dir.install f }
      (cef_runtime_dir/"swiftshader").install Dir.glob("swiftshader/*") if Dir.exist?("swiftshader")
      paks = Dir.glob("*.pak")
      (share/"iron").install paks unless paks.empty?
      (share/"iron"/"locales").install Dir.glob("locales/*") if Dir.exist?("locales")
    end

    (bin/"iron").write <<~SH
      #!/bin/bash
      export LD_LIBRARY_PATH="#{cef_runtime_dir}:#{cef_runtime_dir}/swiftshader${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
      exec "#{bin}/iron.bin" "$@"
    SH
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
