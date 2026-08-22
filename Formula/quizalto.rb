class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "048a12e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-arm64"
      sha256 "474a9ec1752cd87adabae3b25a9ddb8a00e54a80b82cc95a495a414fe5ed1f3e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-amd64"
      sha256 "4dbe8c1dae03d82656d4235197db35827e09f023f2b13bc672d69dcaee3f6aac"
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
