class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c965628"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vc965628/quizalto-darwin-arm64"
      sha256 "c8c083cf306603cd6c569cdff54a3f51140f2e51f5c4e721c8360c801f716bf9"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vc965628/quizalto-darwin-amd64"
      sha256 "e0f86d0e3ba4c16ae2b8386f6687e14e0e21a205b68d867992b842bf4a1a805c"
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
