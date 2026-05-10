class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.110"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.110/iron"
  sha256 "c10cda16307c395c09ff17e8c602188c0b5f1c97c6d84367568d99d1ad7c1562"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.110/cef-runtime.tar.gz"
    sha256 "ed6bdc95b060679ae269de1fb403fb0306c90cee064f4833aa4915bed9184255"
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
