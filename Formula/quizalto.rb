class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "76f764d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v76f764d/quizalto-darwin-arm64"
      sha256 "6dc798a6be19cea5a7c69d81feabcf522b8995488633d80467d3c0eef1bdf06f"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v76f764d/quizalto-darwin-amd64"
      sha256 "6612b4ad873a9f0cf5415982469fa11603e053aa3ca9f22aa94c1e1aa95ee041"
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
