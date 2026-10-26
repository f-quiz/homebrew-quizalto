class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "60557c2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v60557c2/quizalto-darwin-arm64"
      sha256 "fb011be99f5b9d9ae4dc2bf9d37c5d8365aff0fcfc681fe5df3e64618037eb33"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v60557c2/quizalto-darwin-amd64"
      sha256 "8a17359722f5b261d9e9d2bf48a88aabd25d924e3fa13e4815ebe3996af8d9b4"
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
