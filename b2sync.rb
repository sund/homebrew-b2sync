class HomebrewB2sync < Formula
  desc "b2sync installer for brew"
  homepage "https://github.com/sund/homebrew-b2sync"
  url "https://github.com/sund/homebrew-b2sync/archive/v0.4.tar.gz"
  version "0.4"
  sha256 "535c7d06453938b07732aec23835c8b8b8749dfc3f3f77848e869466d54e81f7"

  def install
      bin.install "b2sync"
  end

  test do
      system "#{bin}/b2sync", "-otheroption", "-version"
  end
end
