class HomebrewB2sync < Formula
  desc "b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.4.tar.gz"
  version "0.4"
  sha256 "bf721362204311c692838af9fbc1fe537a04e7607d6e78b8f4ed47b959dc7119"

  def install
      bin.install "b2sync"

      system "./b2syncinstall.sh"
  end

  test do
      system "#{bin}/b2sync", "-otheroption", "-version"
  end
end
