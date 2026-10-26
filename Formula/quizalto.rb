class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b7a05b6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb7a05b6/quizalto-darwin-arm64"
      sha256 "b1027c09c8ed5b05a9a67726359654d910c04fc85445ec167fac52a971f3a944"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb7a05b6/quizalto-darwin-amd64"
      sha256 "0197a0e4fb48974b77fceb79778469e12c131011cd07f515c9c52513c8134f44"
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
