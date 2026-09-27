class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "86754be"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v86754be/quizalto-darwin-arm64"
      sha256 "a25097437a0fce9c8ef765f1182612ac713b4b282b5dd6a79dbff3193e9d82c9"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v86754be/quizalto-darwin-amd64"
      sha256 "876c87cec4fbb7ed3a69a60d0519305bb59c6bb74db509e4c1630369c9d3b9f3"
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
