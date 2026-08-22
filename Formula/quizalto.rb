class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "df4cec1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vdf4cec1/quizalto-darwin-arm64"
      sha256 "f77d4bd1f28aec81f8aea57a06458f1384fe9b66cf6b64b9c81708fc99cec7d1"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vdf4cec1/quizalto-darwin-amd64"
      sha256 "835069956558f748b5a9af7878311abce15d23192e1c53f6c5e95f3c7813c5bc"
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
