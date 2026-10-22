class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f1ba6ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-arm64"
      sha256 "26365d272d6d0771145851fedb60cb18c8eb2f8f659e6b8107ea91921c5c9046"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-amd64"
      sha256 "f1bc0ff4c1edbab9bd8f29330646daa8bed3503e4ee3c84786fb8487777eef9e"
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
