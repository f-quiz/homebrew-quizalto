class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c3b5954"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vc3b5954/quizalto-darwin-arm64"
      sha256 "15a360f142844f213e5be39c8f1dcfc3d3f72341b8bab67e2d6c5f2ed418d648"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vc3b5954/quizalto-darwin-amd64"
      sha256 "34307c6c7bca9486e7273834e569eee77cee6268e11fa0fd3ba39e76ae3426c3"
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
