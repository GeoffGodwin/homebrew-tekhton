class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "381f8daaa8939fb761e94c31e4dbea0ff4ec0d4290f80d3dabbd4928f057e43e"
  license "MIT"

  depends_on "bash"

  def install
    libexec.install Dir["*"]
    (bin/"tekhton").write_env_script libexec/"tekhton.sh", PATH: "#{Formula[\"bash\"].opt_bin}:#{ENV[\"PATH\"]}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tekhton --version")
  end
end
