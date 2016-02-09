class 2sync < Formula
  desc "b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.5.tar.gz"
  version "0.5"
  sha256 "9400a863a08cf0d231db4f22f5e8dd9877c6014aecfa124b6198c2356988a199"

  def install
      bin.install "b2sync"
  end

  test do
      system "#{bin}/b2sync", "-otheroption", "-version"
  end
end
