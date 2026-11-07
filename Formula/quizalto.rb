class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c1e37a0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vc1e37a0/quizalto-darwin-arm64"
      sha256 "f8a6838b40336ee0eedeac605534bf792473f94b328c7b52ea2f2593890e7a39"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vc1e37a0/quizalto-darwin-amd64"
      sha256 "90cab5a8e47c4f788b7b8f455a3501b20a7e1477191afa1cfa9f9647f8413f61"
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
