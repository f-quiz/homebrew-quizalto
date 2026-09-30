class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0cbad9d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0cbad9d/quizalto-darwin-arm64"
      sha256 "3d5887e542abd35b9caaa7e1effa8523896928764baef4cf5a623fe1e0cde5b1"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0cbad9d/quizalto-darwin-amd64"
      sha256 "1f239303932c43874078ef658faf732d3a3765af9647fd2270a33cb228b56cbf"
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
