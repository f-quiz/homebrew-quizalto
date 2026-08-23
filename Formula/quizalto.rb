class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4a2a2fc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v4a2a2fc/quizalto-darwin-arm64"
      sha256 "166f362b1310edac7e19e626add5652c1c52a2e04657d51da72bdb67c884b3be"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v4a2a2fc/quizalto-darwin-amd64"
      sha256 "a308f5553eaaaeb7f886e222437f07034788b5711fafbcd6aad75cd321e24f85"
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
