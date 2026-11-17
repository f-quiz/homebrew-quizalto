class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "79838c5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v79838c5/quizalto-darwin-arm64"
      sha256 "db9b707b4279cd7629bc09f424c769e9606b612c29fd28d7270f96830a92b1b2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v79838c5/quizalto-darwin-amd64"
      sha256 "f6f434568708c1f7f92ecd16dfb9a8669be725142f73cc4be9dec0824995cce2"
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
