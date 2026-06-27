class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ec50bb5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-arm64"
      sha256 "9f7d157f2f2f4a3ff8939bb3ab9f328ba2a86dc0c1dbf1881a14634dda120210"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-amd64"
      sha256 "ca066aa46a1c6bf5167230dc2f213172543cbd04c882cdb3dda1bc04616a16f4"
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
