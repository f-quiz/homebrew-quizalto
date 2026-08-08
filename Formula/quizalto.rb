class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a090327"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va090327/quizalto-darwin-arm64"
      sha256 "92cf9665a0836690b913fdb735e813e5a464bbf59d2c79a7e35ce5e2b4006b4d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va090327/quizalto-darwin-amd64"
      sha256 "eb33b5e05636572d734166a309f2104cfe720790bde2798b6759696287b08b79"
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
