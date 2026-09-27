class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4fee293"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v4fee293/quizalto-darwin-arm64"
      sha256 "89f733b6f2c66671ece4549c7e9f5295cb5022bd13fce30965c2f5621f4109ae"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v4fee293/quizalto-darwin-amd64"
      sha256 "328f00f0c12345d18cd558c1d504bac1056bbf813986b2a004bacba41dffc762"
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
