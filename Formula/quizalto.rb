class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9cfa47b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v9cfa47b/quizalto-darwin-arm64"
      sha256 "6641522aa3543be62a532fe9ed06a97eb928ab55ad50905325d23572dabae91e"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v9cfa47b/quizalto-darwin-amd64"
      sha256 "9663ebf3d2e6add7855022f230963d6ac20a70c04b65c371dfc147ccfe7512bd"
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
