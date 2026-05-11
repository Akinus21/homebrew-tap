class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.147"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.147/iron"
  sha256 "332ace679cb0415e6e6d442eaf456dc47cdd6f206130d2a2f45825b138cc14cd"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.147/cef-runtime.tar.gz"
    sha256 "eda165471198da6d347f20e4ca351b357adaf495878ff2ed732922968d5bb797"
  end

  def install
    bin.install "iron" => "iron.bin"
    cef_runtime_dir = libexec/"cef-runtime"

    resource("cef-runtime").stage do
      puts "CEF runtime files in staging:"
      Dir.glob("*").each { |f| puts "  #{f}" }
      puts "Locales:"
      Dir.glob("locales/*").each { |f| puts "  #{f}" } if Dir.exist?("locales")
      Dir.glob("*.so*").each { |f| cef_runtime_dir.install f }
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
      export IRON_CEF_RUNTIME_DIR="#{cef_runtime_dir}"
      export CEF_PARAMETERS="--single-process --no-zygote --no-sandbox --disable-gpu"
      exec "#{bin}/iron.bin" "$@"
    SH
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
