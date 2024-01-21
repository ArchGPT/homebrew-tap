cask "insomnium" do
  version "0.2.3-a"
  sha256 "71575c907345320fa620b9975e84ff448be5704f81c9a8aeaa5fbf46ff4fef09"

  url "https://github.com/ArchGPT/insomnium/releases/download/core%40#{version}/Insomnium.Core-#{version}.signed.dmg",
      verified: "github.com/ArchGPT/insomnium/"
  name "Insomnium"
  desc "HTTP & GraphQL Client. FOSS Fork of Insomnia. 100%-Local, no user login, etc"
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
