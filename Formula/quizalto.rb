class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "23651a2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-arm64"
      sha256 "58337099bf4d77cf50f9deb5813c39003f16621486ec1bb4806e365d5a80a7c3"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-amd64"
      sha256 "c1fea7bd34e0fa6e9cbd38006767e2b4f1cfe97941474c41b1276fba391594ad"
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
