class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "2657b56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v2657b56/quizalto-darwin-arm64"
      sha256 "6ac975e17eca7663902b1579b30576564f51e7d8f98ee7e340d015fa0a563f52"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v2657b56/quizalto-darwin-amd64"
      sha256 "60ae8f85c90992602c38b4e314a6e7ed09a608ffa944c0ec0213566cb1a0e9bb"
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
