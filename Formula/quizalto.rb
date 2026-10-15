class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bb61d28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vbb61d28/quizalto-darwin-arm64"
      sha256 "ee2e107c42183a67a21d0f781ea99fee47956927cf1f94b6201fb0ec42f23b7d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vbb61d28/quizalto-darwin-amd64"
      sha256 "86dbf32538dfa5b07e02a434344a3b2374ff1bf8625b4a03eaaa1342c16dd9a7"
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
