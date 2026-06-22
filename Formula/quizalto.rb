class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0357af9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0357af9/quizalto-darwin-arm64"
      sha256 "953b00d4cc1faca98a862c20705a305f7f0b104608293e5ed806a6288a39ece3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0357af9/quizalto-darwin-amd64"
      sha256 "c5b8c032acf22e26fa6e45844c81f5f787991f23cfe3b44cbc27654a5869660a"
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
