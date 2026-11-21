class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c9d3fd6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vc9d3fd6/quizalto-darwin-arm64"
      sha256 "bfb600b40cf8716e9beb43ef61e4bd03de2652e7c54a1815cf25acee09b4b311"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vc9d3fd6/quizalto-darwin-amd64"
      sha256 "01c3e83d3cb16c2202a9d441db6a43f466ea036e33f7f4ee107744cf23f578b9"
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
