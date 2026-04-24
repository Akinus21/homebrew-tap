class LinkdingProvider < Formula
  desc "Noctalia launcher provider for Linkding bookmarks"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.0"

  def install
    (prefix / "linkding-provider").install Dir["plugins/linkding-provider/*"]
  end

  def post_install
    plugin_dir = Pathname.new(ENV["HOME"]) / ".config/noctalia/plugins/linkding-provider"
    plugin_dir.mkpath
    (prefix / "linkding-provider").each_child { |f| cp_r f, plugin_dir }
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
