class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9e826c6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v9e826c6/quizalto-darwin-arm64"
      sha256 "5bcb7d0c1d8014096e4e0547fe44d8989f6675fd7e0d8ab9aa526f22dc0470ea"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v9e826c6/quizalto-darwin-amd64"
      sha256 "653b9007f006c8606f75e424b2c89181efd32ff052745fbb0a36791875a78d53"
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
