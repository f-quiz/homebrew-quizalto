class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0e612cb"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0e612cb/quizalto-darwin-arm64"
      sha256 "37bcb4588b988d57f8beb10859a4cc05139540ef6364339437c459e8afc624e8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0e612cb/quizalto-darwin-amd64"
      sha256 "e6f4cc526f27c50f2cb82d5e29883de8fa81fba5f9f659d3337fd891475d49b0"
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
