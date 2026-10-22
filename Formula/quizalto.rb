class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f1ba6ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-arm64"
      sha256 "b639fa7ed6aed5487041e061d9ce01ceaeac10108a9eb8014f3728fdabe9e1fc"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-amd64"
      sha256 "262f4b2c78abffb7390822e6d75626140afa282b6b1be2389ac4a251d49fa2a1"
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
