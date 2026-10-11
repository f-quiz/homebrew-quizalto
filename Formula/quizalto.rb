class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d3d4579"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vd3d4579/quizalto-darwin-arm64"
      sha256 "bad2ccbc2e5d0380128d2b5ebf802510dbd420322ded64a06fc6dc7c7ea3416d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vd3d4579/quizalto-darwin-amd64"
      sha256 "607ad9018902a9470f37fbee21b6afe714d1589b8c0c1b263300050aeab5a420"
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
