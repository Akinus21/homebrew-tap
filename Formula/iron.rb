class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.112"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.112/iron"
  sha256 "f7156a00e1ea58d854002a82aeee01435f197e257968fc13e41ec53cb3f8d149"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.112/cef-runtime.tar.gz"
    sha256 "0851c51b19161cc55de7d136bdc45dec2f13b0dc62c9266f2706e20ba423b072"
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
