class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cf1455b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vcf1455b/quizalto-darwin-arm64"
      sha256 "0754405d32367690a181121452152692fc283052ee50855e1cf10ab85eeec86b"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vcf1455b/quizalto-darwin-amd64"
      sha256 "dfa9f44f5de6209ef8e36fce98195dd7d2c6170ad02b4372466b92ce7114a3b3"
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
