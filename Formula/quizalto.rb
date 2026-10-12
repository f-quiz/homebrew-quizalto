class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b83cb17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb83cb17/quizalto-darwin-arm64"
      sha256 "76dcfb04bb0da4ca782a3b7bafbb99b90a4cc3e725953bafd5435e03cbbcbe5a"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb83cb17/quizalto-darwin-amd64"
      sha256 "32677bde40f7e345be4a3e69661b1035dc2fdb73e74621e59561f86769605908"
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
