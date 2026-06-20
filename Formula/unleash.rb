class Unleash < Formula
  desc "Single-script MDM bypass for macOS — bypass, suppress, monitor, and audit"
  homepage "https://github.com/mateussiqueira/unleash"
  url "https://raw.githubusercontent.com/mateussiqueira/unleash/main/unleash-standalone.sh"
  version "2.0.0"
  sha256 "4b76e6e5e213952f99e346590eba4d27b89974fb34d1fdb5e5d000651e5522d8"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v#{version}", shell_output("#{bin}/unleash version")
  end
end
