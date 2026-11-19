class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "adf0eda"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vadf0eda/quizalto-darwin-arm64"
      sha256 "66bf80364b6399dd96dbc50e2de46ee05ce0d402fade5d34dfdb183cf0763339"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vadf0eda/quizalto-darwin-amd64"
      sha256 "65872d814864bc0bff4c4d84620ddcd3ac6d15583285000daf646c0d2f7e3fa6"
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
