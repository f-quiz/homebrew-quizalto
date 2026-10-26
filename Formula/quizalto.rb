class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cf1455b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vcf1455b/quizalto-darwin-arm64"
      sha256 "f66055343363c03a377bfe3299db72b1956569a6e41d88cd17262779fd8cbf19"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vcf1455b/quizalto-darwin-amd64"
      sha256 "751e99d5a38a30b2bdf442f130e020a8435517ca4cd74b764e846258f8e08f51"
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
