class Gitz < Formula
  desc "gitz - git helper tool"
  homepage "https://github.com/pahanini/gitz"
  version "VERSION_PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/VERSION_PLACEHOLDER/gitz-macos-arm64"
      sha256 "SHA256_MACOS_ARM64"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/VERSION_PLACEHOLDER/gitz-macos-amd64"
      sha256 "SHA256_MACOS_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/VERSION_PLACEHOLDER/gitz-linux-arm64"
      sha256 "SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/VERSION_PLACEHOLDER/gitz-linux-amd64"
      sha256 "SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install Dir["gitz-*"].first => "gitz"
  end

  test do
    system "#{bin}/gitz", "--version"
  end
end