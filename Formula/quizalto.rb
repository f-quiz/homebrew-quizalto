class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "411755f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v411755f/quizalto-darwin-arm64"
      sha256 "e7256ada2feaea51e9054f61b8effb925837f1285b755132a54574ad00e4e896"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v411755f/quizalto-darwin-amd64"
      sha256 "99291a2870e6fd1def0f9ce938433c59ac47ceffd61bf466e075189bff3119f8"
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
