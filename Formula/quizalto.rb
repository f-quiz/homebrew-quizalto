class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f1cae89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vf1cae89/quizalto-darwin-arm64"
      sha256 "17df2a3d1530164511c00d22f63f54d83d678db134a58f3bad1b4252df741685"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vf1cae89/quizalto-darwin-amd64"
      sha256 "b205f568eed1874c7aeec5ce1d70448511a390716991193bc082639c93a1f28d"
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
