class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a0e38df"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va0e38df/quizalto-darwin-arm64"
      sha256 "9c5e37f02ca28de62522ce00b1aac3a6d6a5935b6efe85019d420be2546faab3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va0e38df/quizalto-darwin-amd64"
      sha256 "7c3bc0026c27636b6a8554440f9c8884acd0033ec8b85a60cbeafec828c99d2c"
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
