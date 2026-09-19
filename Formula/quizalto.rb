class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b16dcba"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb16dcba/quizalto-darwin-arm64"
      sha256 "a64ba731fe7ee3c566c0ee05678d3ee557f2c0accc995928595942b741eb40b7"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb16dcba/quizalto-darwin-amd64"
      sha256 "3cf919550e8a67f30c82e6409bae39e0affde59dbf6c36b8238e52e124318cf6"
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
