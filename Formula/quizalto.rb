class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ac1c9f3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vac1c9f3/quizalto-darwin-arm64"
      sha256 "f958b78e7497f3d23aa93619f501439e350d41e28c4ba8aacb99e184953d5541"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vac1c9f3/quizalto-darwin-amd64"
      sha256 "411b344e8e79402e67694502210a4e203532845232601ef25a11790e7dcd0400"
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
