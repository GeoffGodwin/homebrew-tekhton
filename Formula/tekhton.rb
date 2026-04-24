class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "2c3148345f5aedf94fca5fa4bf96611be501c25df4e0c7be1403697eb5423fa8"
  license "MIT"

  def install
    bin.install "tekhton.sh" => "tekhton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
