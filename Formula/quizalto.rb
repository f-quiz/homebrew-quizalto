class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d746994"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vd746994/quizalto-darwin-arm64"
      sha256 "b46463deab07e7ff7b67b9a7e33730ec0e810947cc11bfb451fef82cfea3d600"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vd746994/quizalto-darwin-amd64"
      sha256 "df4ce9a709bc277e5357374554b2888cc44a293b97b2bb7235aac7a57a787152"
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
