class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4cde90c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v4cde90c/quizalto-darwin-arm64"
      sha256 "280f7b300e2587a0908ab5559150c73f5ae2805be77aac6e22cc39e00255a2f6"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v4cde90c/quizalto-darwin-amd64"
      sha256 "6ac0783825be84c9c566a8fe95a78b39c039c14f6098b3036bebec02609c0fe8"
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
