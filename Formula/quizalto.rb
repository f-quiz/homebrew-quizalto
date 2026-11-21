class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e54cd9b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/ve54cd9b/quizalto-darwin-arm64"
      sha256 "4ccc33cc228c39938b659e635e2ee19380e930fbbdc251060aa983ae0550a8e3"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/ve54cd9b/quizalto-darwin-amd64"
      sha256 "2bf62e1e48d44d78b83a06012744024d245f3f2a628caadd9aac6a68c80cb9db"
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
