class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7be989e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-arm64"
      sha256 "80a7a0dced99754cb19cc559c35a710ddfa08a26aac6840d5b2375924df1b7ab"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-amd64"
      sha256 "abd5ce019ac499855d641c2de8e930dc5d902ad9dfeab7c6d7bb4d0aeb6e5a0c"
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
