class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5634e92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5634e92/quizalto-darwin-arm64"
      sha256 "4e8c19fe778c58b6ef88be250ea83a0659fc08dc8d285bf9358748ad07831f71"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5634e92/quizalto-darwin-amd64"
      sha256 "a268a25a3e3a9f7044b27059aa31822eccd2a7c1359c1fc897a8ac079a1b4928"
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
