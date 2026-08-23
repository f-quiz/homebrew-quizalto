class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4a2a2fc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v4a2a2fc/quizalto-darwin-arm64"
      sha256 "2c4452fe25351a7994db294601600ac7f1568e6988724d0528f869b333f1f87d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v4a2a2fc/quizalto-darwin-amd64"
      sha256 "62e8ff5263254e71fb29682e77d2bbeb7a50009042b8bcbcf60ffeed96f2ba31"
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
