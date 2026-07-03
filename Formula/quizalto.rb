class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1e77221"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v1e77221/quizalto-darwin-arm64"
      sha256 "641a7b2b96762e247663b13fb773f45d859f147141104b3f469cf5c6c33da64c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v1e77221/quizalto-darwin-amd64"
      sha256 "9e2d3ab6a37659f18ac238e8c0d16120bab580e72f17bcbc1a0e0b0f43d66279"
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
