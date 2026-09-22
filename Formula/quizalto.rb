class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3e512a7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v3e512a7/quizalto-darwin-arm64"
      sha256 "b510640947206c6d670506ca488e9fd7049735cbc054eff18f16e06ad464204a"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v3e512a7/quizalto-darwin-amd64"
      sha256 "f66891e5cdb166c3556aff8442858dbe758c5cda3159dda6581a9814c52d09f1"
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
