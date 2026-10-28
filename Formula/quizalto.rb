class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7be989e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-arm64"
      sha256 "c182c3eac269d4bb663c6f8dd73561eb9e8c009faa1728e6db7dc590e9c7283a"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-amd64"
      sha256 "a68bd373d76fe14a73b759246d8a8038ff09cbc13ae9a5bf12b912c4ba9af96d"
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
