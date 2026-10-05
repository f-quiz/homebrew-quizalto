class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f0005a8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vf0005a8/quizalto-darwin-arm64"
      sha256 "120c775d2a216f8b5c75997c3051e56cb0dd16c4c96eda34f31f71ac1034996a"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vf0005a8/quizalto-darwin-amd64"
      sha256 "37aaff68630188145a510d533acc4423db25c8e74607c4d7e4a306d57fdeaa29"
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
