class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "302d271"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v302d271/quizalto-darwin-arm64"
      sha256 "cede8a8ff42839bb357887b2e8309c42f150d923c6c7220a1d2c39094dbb15b6"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v302d271/quizalto-darwin-amd64"
      sha256 "b04ab686699ac3db9e1f3bd23204d4daaf0761cbf46f308676316bd6d831183a"
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
