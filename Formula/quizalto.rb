class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ec50bb5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-arm64"
      sha256 "9080b851c605dde907e04220cbce053fab09f3a751c888acf41197a621e7e4d2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-amd64"
      sha256 "db08f625a6958ca7281466f99cda608427c7f8531dba2c77052c9c09dea3fd3b"
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
