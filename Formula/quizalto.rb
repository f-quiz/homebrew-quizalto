class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e50a4ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/ve50a4ef/quizalto-darwin-arm64"
      sha256 "ecad6eeb78f3f06af7d2d61798d871ba2b736f4b125ddf81023edb5b3ca471c2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/ve50a4ef/quizalto-darwin-amd64"
      sha256 "32c26dcd7cfeca4bf9157e42e62492cf4b5f4f9a72e10c5a21505075d4db9a23"
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
