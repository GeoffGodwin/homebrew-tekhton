class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.138.4.tar.gz"
  sha256 "57e338045136795bb4d4171887acbdb856f52a3a2a01757491d33e8da43e7729"
  license "MIT"

  depends_on "bash"

  def install
    libexec.install Dir["*"]
    (bin/"tekhton").write_env_script libexec/"tekhton.sh", PATH: "#{Formula["bash"].opt_bin}:#{ENV["PATH"]}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
