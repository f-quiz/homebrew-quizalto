class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fb3899c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vfb3899c/quizalto-darwin-arm64"
      sha256 "3d3e2280633b15b425b567e4bb9f148ae8b9e4459f5586ef8fbd05ec7313c581"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vfb3899c/quizalto-darwin-amd64"
      sha256 "348386fc12e42a61415fe94d9f51392d074b0d3541bac2ec8f0105a16f4e09b2"
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
