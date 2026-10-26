class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5489c53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5489c53/quizalto-darwin-arm64"
      sha256 "9f5c21b91cfc726bb1fde93d43205d58df8e76770f31f042a95cbc02cbfc13c5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5489c53/quizalto-darwin-amd64"
      sha256 "38eee087b82a85479f4622fa9baffb1191a333cfd457ef0ba9b2fc9ed2df9734"
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
