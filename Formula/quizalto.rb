class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c0dacab"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vc0dacab/quizalto-darwin-arm64"
      sha256 "5c1a396bbecccab053685482a136081fade2e0b2f30da6b83bcc6db75a633acf"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vc0dacab/quizalto-darwin-amd64"
      sha256 "50482be4b96daa14b2eae25069faddcd631dc699d2749d5c04c5830dfca8ff2c"
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
