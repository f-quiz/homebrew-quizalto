class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0657bca"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0657bca/quizalto-darwin-arm64"
      sha256 "f7e5acc8ca9a9ebcc64169f95ef4afd0281f4295c58a527efdf275f3b688026c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0657bca/quizalto-darwin-amd64"
      sha256 "a1bbda41054f1b4a09f1aaa77f3cd34c62f61af4021becbdeb740ca8de6b3d8a"
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
