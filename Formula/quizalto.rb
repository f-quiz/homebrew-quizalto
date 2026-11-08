class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0287270"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v0287270/quizalto-darwin-arm64"
      sha256 "445b667ca3a17503e78a4740879d261c74bf350870e210f5ad1e5853bf639ea9"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v0287270/quizalto-darwin-amd64"
      sha256 "911b9d6d4d7ac69f7d51bccdf90644c36aa14030ae149c0a7d9e725e283fa34f"
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
