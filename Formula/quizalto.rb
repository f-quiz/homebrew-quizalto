class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0fe247a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v0fe247a/quizalto-darwin-arm64"
      sha256 "e3a41c4e0d97460c6264f9fa7ae4b7973e1ab5c6301c39f9949238c3cd3eb565"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v0fe247a/quizalto-darwin-amd64"
      sha256 "e58bc6ae7c0a6cda8033d4ca6531bfdb8b9db20d7c731c769dc787f4aa3c3f98"
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
