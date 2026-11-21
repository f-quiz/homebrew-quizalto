class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0d11271"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v0d11271/quizalto-darwin-arm64"
      sha256 "4f33f72b65cde51cd055ca1967e4b50a1516bf65c4a7dcdf211e0cd4c7e1f130"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v0d11271/quizalto-darwin-amd64"
      sha256 "55a34f5e53a128e34015dcd3894864d8fc9050d1da6f37d947127a56bc6c5370"
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
