class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dea50da"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdea50da/quizalto-darwin-arm64"
      sha256 "19f2048974032aaae10daf2ea829fd25be7e036356b0e189a1dc8dd3cea8db70"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdea50da/quizalto-darwin-amd64"
      sha256 "8a240bb19f400f27234ad06015651242dc5abc38782e82a8615765618c686150"
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
