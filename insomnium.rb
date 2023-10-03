class Insomnium < Formula
  desc "a fast local API testing tool that is privacy-focus and 100% local. For testing GraphQL, REST, WebSockets and gRPC. This is a fork of insomnia"
  homepage "https://github.com/archGPT/insomnium"
  url "https://github.com/ArchGPT/insomnium/archive/refs/tags/core@0.1.3.tar.gz"
  version "1.0.0"
  sha256 "97de94ee823ecea9c8bbb483dcb4e67514161b3e968e7feaba91c94e6aebb69a"

  depends_on "node" => :build

  def install
    system "npm", "run", "app-package"
    system "mv", "./dist/mac-universal/Insomnium.app", "/Applications"
  end

  def caveats
    <<~EOS
      Insomnium is installed in /Applications.
    EOS
  end

end
