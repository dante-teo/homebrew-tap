class Opencut < Formula
  desc "Local video-as-code renderer"
  homepage "https://github.com/dante-teo/opencut"
  url "https://github.com/dante-teo/opencut/releases/download/v0.18.0/opencut-cli-0.18.0-macos-arm64.tgz"
  sha256 "b244a74c79c4ea64482608004a198dfcd826d75ee8ae2fa59d6896113d8af92a"
  version "0.18.0"
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
