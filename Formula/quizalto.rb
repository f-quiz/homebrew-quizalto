class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1d12681"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v1d12681/quizalto-darwin-arm64"
      sha256 "9aee7f40db2a0e547b23ce026ee9f378e084fbf791c1d6e84c734b4b477b8c81"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v1d12681/quizalto-darwin-amd64"
      sha256 "8f3b14e8525784d00cd1098b76d26a7589c1141c877c32b51c7514c3dc97e334"
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
