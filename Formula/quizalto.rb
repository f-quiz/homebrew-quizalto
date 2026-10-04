class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "178f92c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v178f92c/quizalto-darwin-arm64"
      sha256 "1218021af113fc09df58a068f195ed1412fdcb28140d449325f3fd9cf8686c9f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v178f92c/quizalto-darwin-amd64"
      sha256 "8acb7a747e8c13f443d51a546ac72d1acf70a73de6cf1774ada9b09d7739d2d8"
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
