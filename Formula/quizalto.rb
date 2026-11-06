class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "15b9f7a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v15b9f7a/quizalto-darwin-arm64"
      sha256 "04d3cf2bd03630518625d992b7772ee46d31bb53c61667c43942970965f13391"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v15b9f7a/quizalto-darwin-amd64"
      sha256 "212a326ad8173b4f18445030efa944fa54ceadb5b5ced319ccc7c8a93a1984ea"
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
