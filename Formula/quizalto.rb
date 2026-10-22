class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "2229605"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v2229605/quizalto-darwin-arm64"
      sha256 "b26583fd15f5cf1170b37a8f20ee69e2fa8b1cce4303ed94821d30add6565543"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v2229605/quizalto-darwin-amd64"
      sha256 "d52b21813660af53cfb01f12b40e664269036fe62cdbd7e497e4e03ed4c3d83c"
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
