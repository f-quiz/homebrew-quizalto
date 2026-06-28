class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7bcca9f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v7bcca9f/quizalto-darwin-arm64"
      sha256 "09d80b55eef806c8b2f309288b13ec11848c1d944f821e9858d72e94d833b170"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v7bcca9f/quizalto-darwin-amd64"
      sha256 "40de67f929893580ae7da5503ea8394e655988ea85a90e0b4aeed1ff8d00b8f7"
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
