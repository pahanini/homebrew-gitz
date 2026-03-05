class Gitz < Formula
  desc "gitz - git helper tool"
  homepage "https://github.com/pahanini/gitz"
  version "v0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/v0.2.1/gitz-macos-arm64"
      sha256 "c7e859f78968074919ae958e31d833f51ba71fa9da02d3d00d3887f872828886"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/v0.2.1/gitz-macos-amd64"
      sha256 "8edab324ce66964fc33ea6664c6a59f0163f5a357cacb0ac479291c3b5e306b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/v0.2.1/gitz-linux-arm64"
      sha256 "a44263a1bd2de6e018cace5fd39d16dee1f088ebf3f076cf6611f0742362ea51"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/v0.2.1/gitz-linux-amd64"
      sha256 "ff8ed1e7bd24c7b175c2cb288f726f09e8116f94d29bf0d36a8d52d1367ddc41"
    end
  end

  def install
    bin.install Dir["gitz-*"].first => "gitz"
  end

  test do
    system "#{bin}/gitz", "--version"
  end
end