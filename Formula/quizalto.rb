class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9041ea9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v9041ea9/quizalto-darwin-arm64"
      sha256 "9a78a1d3a285c7cc59711c9741d27af844d07625c176884947854e9e4db3ffbd"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v9041ea9/quizalto-darwin-amd64"
      sha256 "41f544ff09313e24cd185d9314bdd6c54d8fa4cc220cf567931146f267a5798c"
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
