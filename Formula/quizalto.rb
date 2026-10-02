class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dbe639a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdbe639a/quizalto-darwin-arm64"
      sha256 "92eca2366a677ef87d9f1bd1dcf487bf2b881ef27845659c39355b77d6e40e78"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdbe639a/quizalto-darwin-amd64"
      sha256 "55c01bb2163f034e2919e045cdab1ed19848ccc0c98e979f6361a3c475d44013"
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
