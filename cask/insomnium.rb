cask "insomnium" do
  version "0.1.3"
  sha256 "7394c27f58cefb9add8c3ea94aceebcea51c65dad4f84e26b12025f3faa23102"

  url "https://github.com/ArchGPT/insomnium/releases/download/core%40#{version}/Insomnium.Core-#{version}.dmg",
      verified: "github.com/ArchGPT/insomnium/"
  name "Insomnium"
  desc "HTTP and GraphQL Client. FOSS Fork of Insomnia"
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

