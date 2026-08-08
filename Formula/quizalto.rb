class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a8683ce"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-arm64"
      sha256 "293a01cdff1c481ae9aaade5535a15e75bc36824f6adb29930666ad3f0151d6b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-amd64"
      sha256 "bc69a1b303e992b1528bea52badf795e6e22b8ce05da735840079756e101e9f1"
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
