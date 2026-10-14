class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5853e92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5853e92/quizalto-darwin-arm64"
      sha256 "ea136a2e621974ac15f2fdb4d8ec5c529307afd6759d54175e1d440da7a3f6a3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5853e92/quizalto-darwin-amd64"
      sha256 "ea00181ae9dee1b5ad8941b4fdd9123e4b5c50e9d44b06ecdec09d4bb355a5bf"
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
