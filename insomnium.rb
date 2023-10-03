class Insomnium < Formula
  desc "a fast local API testing tool that is privacy-focus and 100% local. For testing GraphQL, REST, WebSockets and gRPC. This is a fork of insomnia"
  homepage "https://github.com/archGPT/insomnium"
  url "https://github.com/ArchGPT/insomnium/releases/download/core%400.1.3/Insomnium.Core-0.1.3.tar.gz"
  version "0.1.2"
  sha256 "4f0d376934fe3a9e63a947b1ba8ad0aa7f1ae7145ec349a9ae814ac8807d0db5"

  depends_on "node" => :build

  def install
    system "mv", "./dist/mac-universal/Insomnium.app", "/Applications"
  end

end
