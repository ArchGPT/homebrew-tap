cask "insomnium" do
  version "0.2.2"
  sha256 "91e753f54ba9da7819cf44c5c1890be15e33efebc4a86a2e4a6c1a24f7e6a36d"

  url "https://github.com/ArchGPT/insomnium/releases/download/core%40#{version}/Insomnium.CoreMacOS-#{version}.dmg",
      verified: "github.com/ArchGPT/insomnium/"
  name "Insomnium"
  desc "HTTP and GraphQL Client. FOSS Fork of Insomnia to be 100%-Local and no user login, etc"
  homepage "https://github.com/ArchGPT/insomnium/"

  livecheck do
    url :url
  end

  auto_updates false

  app "Insomnium.app"

  zap trash: [
    "~/Library/Application Support/Insomnium",
    "~/Library/Caches/com.insomnium.app",
    "~/Library/Caches/com.insomnium.app.ShipIt",
    "~/Library/Cookies/com.insomnium.app.binarycookies",
    "~/Library/Preferences/ByHost/com.insomnium.app.ShipIt.*.plist",
    "~/Library/Preferences/com.insomnium.app.helper.plist",
    "~/Library/Preferences/com.insomnium.app.plist",
    "~/Library/Saved Application State/com.insomnium.app.savedState",
  ]
end

