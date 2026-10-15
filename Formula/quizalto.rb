class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "2976277"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v2976277/quizalto-darwin-arm64"
      sha256 "6f8d46179e79afe5556a5346858ba5a1ba36f8734623687c9c40e6413adae3fe"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v2976277/quizalto-darwin-amd64"
      sha256 "c9864f5b001b36f6dcb9913543600021cc9b08e8e7a0a2733f4d43c2c234c73a"
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
