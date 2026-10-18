class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "671c895"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v671c895/quizalto-darwin-arm64"
      sha256 "161b470921cedd07aa9da2558ef2d19daa228052bad933e6d1447f340638d3ca"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v671c895/quizalto-darwin-amd64"
      sha256 "411d27912c2b45ab115b713b8edeb2c19358294c49bce7a68c54646887114d30"
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
