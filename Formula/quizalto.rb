class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "da73b1f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vda73b1f/quizalto-darwin-arm64"
      sha256 "74aeca427d24126796edda96968c1c2b8795bbff184f1f2f5ce6c1757a1a035c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vda73b1f/quizalto-darwin-amd64"
      sha256 "52fc1f7b17bb30e30e6f0e1f1e34c0010c1c5d9b1e48170386abda329e94eb95"
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
