class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "084f2a2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v084f2a2/quizalto-darwin-arm64"
      sha256 "28653d44d25ccc9edace6405826fec52617b243add4aa8aaf24e0a1b78dab80d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v084f2a2/quizalto-darwin-amd64"
      sha256 "70bafb4d65aa5e8162c3b9678b329a107c96764f458940d4f08acb48d40390de"
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
