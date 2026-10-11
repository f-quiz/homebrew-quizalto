class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6464159"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v6464159/quizalto-darwin-arm64"
      sha256 "4e07f786db2ce7ec414af276e07633f34902dd1d6c2ed85e828dc8819db57075"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v6464159/quizalto-darwin-amd64"
      sha256 "4b8431429762616cc663b8951e0489c3ff7789202e18f2e683d8c4b55f1e4385"
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
