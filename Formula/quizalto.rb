class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6159132"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v6159132/quizalto-darwin-arm64"
      sha256 "70bf553b115c5022aae3f1fd057aa917985370e5c61e0e83b2ab2b0af9d7968c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v6159132/quizalto-darwin-amd64"
      sha256 "6a54ad0e93438ec74ad312c9a78126c1325ddf08569ab4cbbf48d9a2c11cb1e7"
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
