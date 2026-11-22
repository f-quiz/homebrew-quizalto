class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bbd896d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vbbd896d/quizalto-darwin-arm64"
      sha256 "ec21ca1fb0793e666307313a00fdd9fdb0fd6ffb34ec9ae1009e50811d9c2aca"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vbbd896d/quizalto-darwin-amd64"
      sha256 "9c81d890c1f35ead19d4e9d8639ae0fa3c196a9534bbfbbb9f908998036a7a21"
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
