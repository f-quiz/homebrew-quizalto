class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7be989e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-arm64"
      sha256 "72d2263164adfa9da8a9b883fe33185054fad8659bf37eaed49dbb35d6d5b6dc"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-amd64"
      sha256 "c0ff2c78c960d93484699a97175c73d0ae08848d432b007609dcf1e7dc0d22d8"
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
