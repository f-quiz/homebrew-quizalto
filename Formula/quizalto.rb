class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a7b2479"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/va7b2479/quizalto-darwin-arm64"
      sha256 "45fbbf5def9605baee344be48136029caf79b45015427b50e851e24440e75693"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/va7b2479/quizalto-darwin-amd64"
      sha256 "29706d97c6989b341be9a56af2fc4a8207ae37009363c1fecd6a260cd1987dc3"
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
