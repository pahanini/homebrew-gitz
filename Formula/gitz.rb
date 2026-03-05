class Gitz < Formula
  desc "gitz - extends git with extra commands"
  homepage "https://github.com/pahanini/gitz"
  version "v0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/v0.1.0/gitz-macos-arm64"
      sha256 "8751312a4a84dc27f1fd2b7519e93d584e50257ba4fec08e80a9029b0dd150a5"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/v0.1.0/gitz-macos-amd64"
      sha256 "98d5721468feba08e32f8385816fa6267f270f4b87f58a98521e57316a655fac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pahanini/gitz/releases/download/v0.1.0/gitz-linux-arm64"
      sha256 "72060d74632a6e0bdfb6d9ff407675d568de4d9526a3717bde77591406dfdce9"
    end
    on_intel do
      url "https://github.com/pahanini/gitz/releases/download/v0.1.0/gitz-linux-amd64"
      sha256 "0b337636a7f5205e60e5a2291f8fdfc958f74ee669c99a2f0d0fdb1b1c7be873"
    end
  end

  def install
    bin.install Dir["gitz-*"].first => "gitz"
  end

  test do
    system "#{bin}/gitz", "--version"
  end
end