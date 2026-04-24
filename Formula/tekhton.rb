class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/geoffgodwin/tekhton/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "placeholder"
  license "MIT"

  def install
    bin.install "tekhton.sh" => "tekhton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
