class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3feccb2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v3feccb2/quizalto-darwin-arm64"
      sha256 "37eefcb34bd8871225c80b9e65d819292e85ba5d58c4acfcf2eca142a2cf7452"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v3feccb2/quizalto-darwin-amd64"
      sha256 "07c98494d29799db339b99f0e8ca97be8e1bffd9849e8bca6c916912e9f5afc5"
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
