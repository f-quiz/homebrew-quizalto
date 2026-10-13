class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3c4ac08"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v3c4ac08/quizalto-darwin-arm64"
      sha256 "da8e2457c11ac1111ba9a1e807f008105a748876a4ae0e122a7814d764607eb7"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v3c4ac08/quizalto-darwin-amd64"
      sha256 "da94b6e816deaae476dd1437a99e0753e7ce43a6ea28b68ddf347a4f6d32327e"
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
