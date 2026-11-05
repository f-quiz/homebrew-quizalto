class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c2000d9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vc2000d9/quizalto-darwin-arm64"
      sha256 "532d3fa390eaf34a55938e5819fb9ebb08ae612019fac41fb8d733911d6b7780"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vc2000d9/quizalto-darwin-amd64"
      sha256 "2ae8aebc9a31439ba59ed5fd7f03926085d96ee2678905fbdc6c5818d6be551d"
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
