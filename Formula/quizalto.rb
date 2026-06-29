class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "32cf2d7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v32cf2d7/quizalto-darwin-arm64"
      sha256 "438553f353b9e8451fb9c3af9a9788d907783b0aef9c14b5f822415f0daf92a9"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v32cf2d7/quizalto-darwin-amd64"
      sha256 "ffe29ab20b294f899de1a79097de174d7992ad5b09345b6982c7ea6b46c809d1"
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
