class Opencut < Formula
  desc "Local video-as-code renderer"
  homepage "https://github.com/dante-teo/opencut"
  url "https://github.com/dante-teo/opencut/releases/download/v0.18.2/opencut-cli-0.18.2-macos-arm64.tgz"
  sha256 "14d3947dd1a41af438b9bbc48ce7c6459c70e1def0e1b9e9c3e78afaf899e134"
  version "0.18.2"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "node@24"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    libexec.install Dir["*"]
    (bin/"opencut").write <<~SH
      #!/bin/sh
      export PATH="#{Formula["ffmpeg"].opt_bin}:$PATH"
      exec "#{Formula["node@24"].opt_bin}/node" "#{libexec}/dist/index.js" "$@"
    SH
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/opencut --version").strip
    doctor = JSON.parse(shell_output("#{bin}/opencut doctor --json"))
    assert doctor.fetch("media").fetch("ready")
    assert_equal "available", doctor.dig("media", "engine", "status")
    assert_equal "available", doctor.dig("ai", "videoToolbox", "workers", "interpolation", "status")
  end
end
