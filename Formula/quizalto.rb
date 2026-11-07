class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6ad1943"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v6ad1943/quizalto-darwin-arm64"
      sha256 "0596e481c9ed7b4b984bc5730399ee44cad63e0447da6ac0c25085508768cb24"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v6ad1943/quizalto-darwin-amd64"
      sha256 "339c9b85efc97bfec03310e45362eef588a19546000c13b663c1d31726f0af99"
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
