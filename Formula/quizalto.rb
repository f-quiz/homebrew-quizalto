class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5ea83e0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5ea83e0/quizalto-darwin-arm64"
      sha256 "12fa871c8d961046440b39dbfe9a648d9c4c97dfd07cf7b242e95a9763dc3377"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5ea83e0/quizalto-darwin-amd64"
      sha256 "0dedde63c7aced8383a9dc3941cc5259ef4fca532f2dac2ab0d81ca2bca4b825"
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
