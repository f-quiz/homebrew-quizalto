class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "576e659"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v576e659/quizalto-darwin-arm64"
      sha256 "839b42be2d462b4df96354f8cda2047708c1ef18f2d7b9439418beaff990c1af"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v576e659/quizalto-darwin-amd64"
      sha256 "1f038ba956d92ff819755d1c888515c3178211a9652e6c7009d60e66950e74bc"
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
