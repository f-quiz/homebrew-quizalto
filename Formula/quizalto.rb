class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "59ba453"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v59ba453/quizalto-darwin-arm64"
      sha256 "4318797ae76efa10f1741a9c721e349a0f1418ad8bc658f6dbd4409781a9e1a4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v59ba453/quizalto-darwin-amd64"
      sha256 "e4c6c78c08e52934054ab1f44d162772a9534f9e530646976b677269bb99ec52"
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
