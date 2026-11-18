class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a01097a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/va01097a/quizalto-darwin-arm64"
      sha256 "3f44e10fe60866978789386cc355e914fe704b52c1d6854490d75269a4835672"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/va01097a/quizalto-darwin-amd64"
      sha256 "30813bfad732f1103b7b0f7bc2316858401fe046203e1b25f5365f8b16a69598"
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
