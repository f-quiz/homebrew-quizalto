class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "2d2339f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v2d2339f/quizalto-darwin-arm64"
      sha256 "9f1fe1be2ed48ab1ed064a58dd309c089065da1c424076ca452edc77eb9ee8dd"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v2d2339f/quizalto-darwin-amd64"
      sha256 "208dc389d87d0ba81f6e7190876b2f1544c59970c43b4bbe12240f477d2ac92d"
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
