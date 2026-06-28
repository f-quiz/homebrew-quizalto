class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ac1c9f3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vac1c9f3/quizalto-darwin-arm64"
      sha256 "5ad6a6f95c455fa223d600e01568bafcef23a00aa9dba42e3e142b1f7400a83f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vac1c9f3/quizalto-darwin-amd64"
      sha256 "ba573cbed99f85b5f9d3a4f6824116cdf1ce0b398ccd535ce1ff5ecc7ae88b0d"
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
