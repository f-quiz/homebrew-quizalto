class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4edfc75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v4edfc75/quizalto-darwin-arm64"
      sha256 "1fecc93fd40355f9dd539be8cc55fab4f1dd6319073f9033379bf30079299163"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v4edfc75/quizalto-darwin-amd64"
      sha256 "acded7f409986a09bc48c7a88c7ce1762cc8dda6682cdfdc35624793eb7ef043"
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
