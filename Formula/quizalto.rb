class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "87426f4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v87426f4/quizalto-darwin-arm64"
      sha256 "0d1e029f1ce85dec7314a30e84119ad8ffdc3d5c04a8e11530d603f500888bdc"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v87426f4/quizalto-darwin-amd64"
      sha256 "0bbdfc615334e11dabf875df5ffe6c1e5e64e401556a702d13ae24767afcb169"
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
