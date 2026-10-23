class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8d3f939"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8d3f939/quizalto-darwin-arm64"
      sha256 "7ae1ce7c8aff56592127d6628c761076898ac20e4dcf1aa1d3d27d01ba550971"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8d3f939/quizalto-darwin-amd64"
      sha256 "128d7df8f67fd55e7d1935887ad6c51f98cc32e6ef255b4d51ef5d1d373ee730"
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
