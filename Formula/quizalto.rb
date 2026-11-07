class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "42ab72e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v42ab72e/quizalto-darwin-arm64"
      sha256 "bb18ac990ac9f11a821d4bde188329dcf49391643af8cc6e5e5f9e21b69856c2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v42ab72e/quizalto-darwin-amd64"
      sha256 "11640779552d5e30c41ad2c4e856b695c12331ea0ac06c36d00ed461e0b498dc"
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
