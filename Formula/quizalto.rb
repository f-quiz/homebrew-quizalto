class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fe1d101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vfe1d101/quizalto-darwin-arm64"
      sha256 "ae19ff0e4d85a27c25e64c1b5f297deaa3c9165ed3a839f6d5cc0a15dfe47c87"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vfe1d101/quizalto-darwin-amd64"
      sha256 "b140c38c463c99bf3281545228325449a62bcc217128a2348c5b5cf7a47fdf0d"
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
