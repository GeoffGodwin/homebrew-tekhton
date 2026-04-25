class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.4.tar.gz"
  sha256 "ff31dd945836b5837d711ace38a47d0a647ccbfcea22b453e8453330439b22af"
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
