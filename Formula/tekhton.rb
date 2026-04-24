class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "fe7e43c1254f0c3f871659dce8e636505896041c324f2df3a7e9e4a6330e9ad2"
  license "MIT"

  def install
    bin.install "tekhton.sh" => "tekhton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
