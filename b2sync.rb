class B2sync < Formula
  desc "Backblaze's command line rsync-like utility for B2"
  homepage "http://sund.github.io/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/0.6.0.4-1.0.tar.gz"
  version "0.6.0.4-1.0"
  sha256 "8d615cb63d7e75a1e0b14ced3502fa5938bc117a9ee5de87931af8f7367017b0"

  def install
    bin.install "b2sync"
    system "sudo", "mkdir", "-p", "/Library/Logs/b2sync/logs"
    system "sudo", "touch", "/Library/Logs/b2sync/b2sync"
  end

  test do
    system "#{bin}/b2sync", "-otheroption", "-version"
  end
end
