class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c6f3402"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vc6f3402/quizalto-darwin-arm64"
      sha256 "a609782d8b2587ecd9e7260d67e69325fe7263110220affa68f5e6df515768ec"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vc6f3402/quizalto-darwin-amd64"
      sha256 "f8430312c7c24b0f6921d1573f1a4bc8f831195ce1ce44ca4e68e96b76ae59c8"
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
