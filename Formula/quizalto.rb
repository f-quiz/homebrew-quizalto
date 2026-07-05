class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "676bf5a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v676bf5a/quizalto-darwin-arm64"
      sha256 "c11f9b9b7919a23ea33946051757732d752ce69cc4795df4fa65ae2b9ae0742a"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v676bf5a/quizalto-darwin-amd64"
      sha256 "767ff9cc91529a508affcec6c0eaaaae5b6eb41240b4fe3c20e40ba917a352f7"
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
