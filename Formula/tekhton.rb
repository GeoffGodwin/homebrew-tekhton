class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "f4baf494b6b51c6281d785eb8ce4beacd78b9d6ada3475912e69c1c73206d9e1"
  license "MIT"

  def install
    bin.install "tekhton.sh" => "tekhton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
