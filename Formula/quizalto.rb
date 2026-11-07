class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5962f55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v5962f55/quizalto-darwin-arm64"
      sha256 "9fa7955bde2ec058bb115cae0d1774f06a4dfe5256e53ba7a03cda8a8e7b9e2d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v5962f55/quizalto-darwin-amd64"
      sha256 "07f71c697f5b29d70598e47d9175701acd551df126dd83d0de6fb492b728ffd1"
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
