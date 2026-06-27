class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "066c3c6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v066c3c6/quizalto-darwin-arm64"
      sha256 "d326fca02ce9d49a234dea83b340adc8acd3eda821aea3c2ad786a73a579a6ca"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v066c3c6/quizalto-darwin-amd64"
      sha256 "27e2adb722e0c0674f0ed79ecd8616c14ab60cd3a584d4c42d7b27eea2335336"
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
