class HomebrewB2sync < Formula
  desc "b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.1.tar.gz"
  version "0.1"
  sha256 "62f9b48876ee17a66c0155cb2296f118b69237a93886bdf2a87907375819efe8"

  def install
      bin.install "b2syncinstall.sh"
  end

end
