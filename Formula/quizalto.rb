class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a8683ce"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-arm64"
      sha256 "2f94b64c025cfd82fec77e928829648aef690ba3db52bc6385b95612a7f8e084"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-amd64"
      sha256 "3fb207287d6ad7a8874aa3f545efb38c0d275b91bd89c773ee0b9ab992f2807e"
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
