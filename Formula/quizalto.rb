class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "11c3e31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v11c3e31/quizalto-darwin-arm64"
      sha256 "763e5a7fa409e5ece4ff08e6abd96007a906775e5da209c7d1e147831c07691f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v11c3e31/quizalto-darwin-amd64"
      sha256 "4f4007c39753268fb4dcc690795a4540e30cd7ae4e1fb258f9870a269aa6e71d"
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
