class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6af3066"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v6af3066/quizalto-darwin-arm64"
      sha256 "04a3dcc17c67914e514971fd9677ff029c62c245e5a7367877140c32f1a7153c"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v6af3066/quizalto-darwin-amd64"
      sha256 "c88961a321db17a836539b87cc2a91d80b2452e23af2e3ac60e7e1898b7910a1"
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
