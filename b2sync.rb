class B2sync < Formula
  desc "backblaze b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.5.tar.gz"
  version "0.5"
  sha256 "e3fc7fd87c46d186f7fefc8451d87deb624496b38193914e3bb7fce08c7089ad"

def install
  bin.install "b2sync"
  system "sudo", "mkdir", "-p", "/Library/Logs/b2sync/logs"
  system "sudo", "touch", "/Library/Logs/b2sync/b2sync"
end

test do
    system "#{bin}/b2sync", "-otheroption", "-version"
  end
end
