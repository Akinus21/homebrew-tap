class LinkdingProvider < Formula
  desc "Noctalia launcher provider for searching and managing Linkding bookmarks"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.0"

  # No compiled binary — we distribute the plugin files directly from the tap.
  # Homebrew still needs a url/sha256, so we point at the tap archive itself.
  # Update the sha256 after tagging a release:
  #   curl -L https://github.com/Akinus21/homebrew-tap/archive/refs/tags/linkding-provider-1.0.0.tar.gz | sha256sum
  url "https://github.com/Akinus21/homebrew-tap/archive/refs/tags/linkding-provider-1.0.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_TAGGING"

  # No dependencies — pure QML plugin, runtime is Noctalia Shell itself
  bottle :unneeded

  PLUGIN_ID = "linkding-provider"
  PLUGIN_DIR = Pathname.new(ENV["HOME"]) / ".config/noctalia/plugins" / PLUGIN_ID

  def install
    # Install plugin files into the Cellar as the canonical source of truth
    (prefix / PLUGIN_ID).install Dir["plugins/#{PLUGIN_ID}/*"]
  end

  def post_install
    # Create the Noctalia plugin directory if it doesn't exist
    PLUGIN_DIR.mkpath

    # Copy all plugin files from the Cellar into the Noctalia plugins directory
    (prefix / PLUGIN_ID).each_child do |file|
      cp_r file, PLUGIN_DIR
    end

    ohai "Linkding Provider installed to #{PLUGIN_DIR}"
  end

  def caveats
    <<~EOS
      The Linkding Provider plugin has been installed to:
        #{PLUGIN_DIR}

      Noctalia should pick it up automatically. If not, restart Noctalia Shell.

      To configure the plugin, open Noctalia Settings → Plugins → Linkding Bookmarks → Configure
      and enter your Linkding URL and API token.

      Usage in the launcher:
        >lnk           Browse all bookmarks
        >lnk <query>   Search bookmark titles and URLs
        >lnk #<tag>    Search by tag
        >lnk new       Add a new bookmark
        >bmk           Same as >lnk (alternate prefix)
    EOS
  end

  def uninstall
    # Remove the plugin from Noctalia's plugin directory on uninstall
    rm_rf PLUGIN_DIR if PLUGIN_DIR.exist?
    ohai "Linkding Provider removed from #{PLUGIN_DIR}"
  end

  test do
    # Verify all required plugin files are present in the Cellar
    %w[manifest.json LauncherProvider.qml Panel.qml Settings.qml].each do |f|
      assert_predicate prefix / PLUGIN_ID / f, :exist?,
        "Expected plugin file #{f} to exist in Cellar"
    end

    # Verify manifest has the correct plugin id
    manifest = JSON.parse((prefix / PLUGIN_ID / "manifest.json").read)
    assert_equal "linkding-provider", manifest["id"]
    assert_equal "1.0.0", manifest["version"]
  end
end
