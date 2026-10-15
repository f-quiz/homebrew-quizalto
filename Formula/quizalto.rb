class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "603afb2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v603afb2/quizalto-darwin-arm64"
      sha256 "b71a84e0793167ca6e5ddb654bf5366b989d0eb8bfc098a5b999c9507f1408a7"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v603afb2/quizalto-darwin-amd64"
      sha256 "c66d68667246225d4047c300b37e93c90a7747dd7909a664477d568cac248faa"
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
