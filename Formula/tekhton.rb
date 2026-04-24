class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "d5ff7a2cbc0f204477a8efd8cbe88be80da9dc04e6014f668013866e4980e876"
  license "MIT"

  def install
    bin.install "tekhton.sh" => "tekhton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
