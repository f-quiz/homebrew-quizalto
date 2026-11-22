class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bc0124c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vbc0124c/quizalto-darwin-arm64"
      sha256 "9b50796ec359560a112229b9368b212bd5c95916467213ce58c6734642bc9333"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vbc0124c/quizalto-darwin-amd64"
      sha256 "03d31cf4b5d9384f9905a70a0dc8f88a357c8983997af2cf4dda55f6540fb061"
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
