class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a87d9e5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va87d9e5/quizalto-darwin-arm64"
      sha256 "6a75ace7db33a617d4526b9f3ab1cc28526b9595a9eddd573c207418f89bc238"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va87d9e5/quizalto-darwin-amd64"
      sha256 "11b5d183333087fc2995a282cccbad09d9f42c4361ec5ca2d157134c9b54f801"
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
