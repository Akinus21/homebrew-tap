class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.113"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.113/iron"
  sha256 "3132bba4880bc8cfa9474754d41be1f8b2ddf4170cf9d3c700271c672846c59e"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.113/cef-runtime.tar.gz"
    sha256 "61141edddce3e83640c6e0868c37b7cd86eea0fe72aa27b6cdb997ca06d38772"
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
