class HomebrewB2sync < Formula
  desc "b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.3.tar.gz"
  version "0.3"
  sha256 ""

  def install
      bin.install "b2syncinstall.sh"
  end

end
