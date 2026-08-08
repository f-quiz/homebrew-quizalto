class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a8683ce"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-arm64"
      sha256 "92cac8c132464692128e3a35aaf57228b15f4b432b2746162eed90180c7e8333"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-amd64"
      sha256 "ce891e95eeafbba4103b753b7241ba10c94b43b0d1b0299d823fce0229d16c6a"
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
