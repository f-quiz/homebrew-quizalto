class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f3d362c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vf3d362c/quizalto-darwin-arm64"
      sha256 "5371b84e5a2f6a5ff785badca41778e0e475b40203aec9b0dc6a5e7bc38373d5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vf3d362c/quizalto-darwin-amd64"
      sha256 "0ec41dd5a3da92659b378e3c685235463b7525553ad68de6290e21318b1c4cbd"
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
