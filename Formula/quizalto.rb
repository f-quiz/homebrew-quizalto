class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7be989e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-arm64"
      sha256 "91f4fe7a281be8963c08f3a196b89a85f48e794348144b31c3820b6bbf79f203"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-amd64"
      sha256 "9aed16981f8df4e35f3dc57839d011f9620b1765ec3d2dabbc38e6746169da8d"
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
