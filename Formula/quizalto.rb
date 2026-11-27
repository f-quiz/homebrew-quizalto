class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6d82798"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v6d82798/quizalto-darwin-arm64"
      sha256 "9aa33652bf138281b18d27f07bc714681978c41617a95b1acd375b634a1d3528"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v6d82798/quizalto-darwin-amd64"
      sha256 "ea86b46309f2a44fa92655e6571456773d8d11756951cbae3475c35878cc9197"
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
