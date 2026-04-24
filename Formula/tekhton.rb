class Tekhton < Formula
  desc "Multi-agent development pipeline built on Claude CLI"
  homepage "https://github.com/geoffgodwin/tekhton"
  url "https://github.com/GeoffGodwin/tekhton/archive/refs/tags/v3.125.3.tar.gz"
  sha256 "305ef9c645eb48595be4b2253389a078dfa9f99839586b846b6a1c62b447ad3a"
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
