class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a479d36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va479d36/quizalto-darwin-arm64"
      sha256 "951dad8fc25a55ee5f818815fd4d3c5ca18d7ad394df5a0151724854ed0e76f3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va479d36/quizalto-darwin-amd64"
      sha256 "b5322e9720b6e3b5e7c415906dc9c3468f01a83a73d5dea9c069f8791b801cff"
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
