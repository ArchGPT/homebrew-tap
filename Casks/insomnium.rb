cask "insomnium" do
  version "0.2.1"
  sha256 "c1bcd589b79a6898198a3aca2b55b5c7e72218668de7badeb5f8281e68c28364"

  url "https://github.com/ArchGPT/insomnium/releases/download/core%40#{version}/Insomnium.Core-#{version}.dmg",
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

