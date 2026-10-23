class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b446419"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb446419/quizalto-darwin-arm64"
      sha256 "922e9351b91e86f5cf004d0a93528742937df0dc77e3f14f862ad997ba3c7a54"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb446419/quizalto-darwin-amd64"
      sha256 "50f58bd2f201de5880c76442451ed234bed1ea0defc1f7a523afb4ad62fa7242"
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
