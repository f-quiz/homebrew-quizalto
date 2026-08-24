class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d6322bd"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vd6322bd/quizalto-darwin-arm64"
      sha256 "18db90fbe463e2cb1bbac131b337a01d8850515d22a68157dacd0b43e30b4771"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vd6322bd/quizalto-darwin-amd64"
      sha256 "66b5472751216aa81b2e4a3d057aa7e4ff2666de3fd8de01f8b3b92651caabed"
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
