class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "217eecc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v217eecc/quizalto-darwin-arm64"
      sha256 "087064cb2ad084eba719d9462c7946c2e4d38a19d2cd9d25997ea1ddc92ac73b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v217eecc/quizalto-darwin-amd64"
      sha256 "0fd6be773beb1e08d4bd52553638a628b676a6a9821b7ce0117e8bd850dfb33f"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "quizalto-darwin-arm64" => "quizalto"
    else
      bin.install "quizalto-darwin-amd64" => "quizalto"
    end
  end

  test do
    system bin/"quizalto", "--help"
  end
end
