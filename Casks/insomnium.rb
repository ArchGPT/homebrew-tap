cask "insomnium" do
  version "0.2.1-b"
  sha256 "16d026a4f04bf35bde993f55daa16fc923effbaca9101b9bf8aaeb93de715423"

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

