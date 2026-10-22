class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "db852cf"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdb852cf/quizalto-darwin-arm64"
      sha256 "328c28668780777ffb7759f8f7ad25b08929bcd60be426323c6965d3fa1bdf27"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdb852cf/quizalto-darwin-amd64"
      sha256 "f5553bfb15be630644845e8231c69e81ead162f4efd89db7dae557831837d139"
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
