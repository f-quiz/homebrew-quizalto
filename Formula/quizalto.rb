class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "23651a2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-arm64"
      sha256 "d6454e2a7e53978018a8c063788ebfd5f96442595f3967f4a96028b3fb48b252"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-amd64"
      sha256 "bae93ddf498fa03dce532abe731ff48ce660c634d699b15fe0b29d5e7349e160"
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
