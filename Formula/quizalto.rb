class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f1ba6ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-arm64"
      sha256 "0fbbc098a5f449a11d28c77e62d7557d71098b9359bc0420cf0e51b0538492ae"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-amd64"
      sha256 "feb751ac71dc27d44d80ebcc469eadfc0c00752abe62a32743834f23a802d475"
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
