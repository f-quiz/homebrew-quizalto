class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8cfe842"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8cfe842/quizalto-darwin-arm64"
      sha256 "de591f3d4c281f8537a0ab3b79217e9018dd14331ca38d56519d185e00db958b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8cfe842/quizalto-darwin-amd64"
      sha256 "9b9664552f971e1bd3a88cb731996d234d26ec12d68767824d405ea38ad66b93"
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
