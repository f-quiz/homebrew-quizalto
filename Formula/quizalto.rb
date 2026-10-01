class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dffab39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vdffab39/quizalto-darwin-arm64"
      sha256 "d51962205c2d77900171187e90c57c0c4dab9fce2b29dcea457b133cfe5d0de2"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vdffab39/quizalto-darwin-amd64"
      sha256 "9bb74b73962f85c00fc466ec5cd45594ac5c9dd3a80dfab68964c87764466c1c"
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
