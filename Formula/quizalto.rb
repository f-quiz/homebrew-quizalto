class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a186b1e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va186b1e/quizalto-darwin-arm64"
      sha256 "d90eaf27912d89030ab1e6a72db36c747bc3658e0d078b9885d83342503eb69e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va186b1e/quizalto-darwin-amd64"
      sha256 "f6d3e9fd1d7b35533cd21c4c15b1527e777f72e24677fca57e63c81e5fa3d066"
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
