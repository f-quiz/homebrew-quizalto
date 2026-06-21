class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fb007b2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vfb007b2/quizalto-darwin-arm64"
      sha256 "c51f79ce40788f53e8708f9dbea314a12e8d78b05dcc78b5c2a161af2f9cf888"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vfb007b2/quizalto-darwin-amd64"
      sha256 "5d09de0d8f7e75eaac45c059344ec05fbae1a78c9ede937e30d49cf9844c573a"
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
