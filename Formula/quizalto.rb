class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cf5a775"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vcf5a775/quizalto-darwin-arm64"
      sha256 "410a8cca91a970d422f651c07a6113da2366e468dcf2b6d2d518eb8610c31d1c"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vcf5a775/quizalto-darwin-amd64"
      sha256 "ef26ab3ef7e406f654694099e72f7ea69ab31ae9ac6744dd3aaeb69afa6aecf3"
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
