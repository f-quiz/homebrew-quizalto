class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fdafa12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vfdafa12/quizalto-darwin-arm64"
      sha256 "6ca55be6bae1d331f70a1cf26ee105c08b084d05e147b58fc505af946ce466e4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vfdafa12/quizalto-darwin-amd64"
      sha256 "e7f8f7dfc0208b6c2267573d9aebb3ea1703a23cf75b5e6e79b5accced9275f2"
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
