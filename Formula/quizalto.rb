class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "411755f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v411755f/quizalto-darwin-arm64"
      sha256 "50603c967c747713b970fb439b21f73e497aab6888915d1f3024b2a2b2b19f93"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v411755f/quizalto-darwin-amd64"
      sha256 "5f43847ccff7cc18b7e5a4030dd1637f89d0ac497d5bca1bb6c758864152d735"
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
