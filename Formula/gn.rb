class Gn < Formula
  desc "Meta-build system for generating Ninja build files"
  homepage "https://gn.googlesource.com/"
  url "https://gn.googlesource.com/gn",
      using:    :git,
      revision: "64d35867ca0a1088f13de8f4ccaf1a5687d7f1ce"
  version "2024.12.30"
  license "BSD-3-Clause"

  depends_on macos: :catalina
  depends_on "ninja"

  def install
    system "python3", "build/gen.py"
    system "ninja", "-C", "out"

    bin.install "out/gn"
  end

  test do
    system bin/"gn", "help"
  end
end
