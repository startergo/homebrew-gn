class Gn < Formula
  desc "Meta-build system for generating Ninja build files"
  homepage "https://gn.googlesource.com/"
  url "https://gn.googlesource.com/gn",
      using:    :git,
      revision: "f90c3d9df882a9da4a66457f47dd3d99b3df3dd5"
  version "2026.10.15"
  license "BSD-3-Clause"

  depends_on "ninja"
  depends_on "python3" => :build

  def install
    system "python3", "build/gen.py"
    system "ninja", "-C", "out"

    bin.install "out/gn"
  end

  test do
    system bin/"gn", "help"
  end
end
