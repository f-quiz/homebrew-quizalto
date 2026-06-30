class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "23651a2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-arm64"
      sha256 "baeec03987ee576a2f19db96e27308e70b2c52971c180a40c7e0ab117ab0004d"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-amd64"
      sha256 "fe145f97a2df740da11a853d504fb4699f79bae0682be2692002443396a9e93c"
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
