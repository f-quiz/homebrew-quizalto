class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d6f5c70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vd6f5c70/quizalto-darwin-arm64"
      sha256 "8d33a762326c0297a23e2bb86c54700d5ad27c5351e13afa3d86bd8a6b38f4b2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vd6f5c70/quizalto-darwin-amd64"
      sha256 "1f25fecf1864068c2ae6db3773b470d10584bad68b572b04c187b9ff98641dbd"
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
