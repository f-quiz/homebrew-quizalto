class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bf4e586"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vbf4e586/quizalto-darwin-arm64"
      sha256 "98a95401f297c99f575aa45d607f5c524785f39780db431c43f2dc7d817733ac"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vbf4e586/quizalto-darwin-amd64"
      sha256 "53cc82a835646dd7bdddd0aa8fb40351e7a1788dc68123795386d778522f6cc3"
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
