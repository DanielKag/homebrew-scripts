# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Glogm < Formula
  desc 'Git log with fzf'
  homepage 'https://github.com/DanielKag/glogm'
  url 'https://github.com/DanielKag/scripts/archive/refs/tags/1.2.tar.gz'
  sha256 'f81a4e26ee306a966d49cb460e8ac9c0854c41964e4e06f0f0dab0d002ec59ac'
  license 'MIT'

  # depends_on "cmake" => :build
  depends_on 'fzf'
  depends_on 'git-delta'

  def install
    bin.install 'glogm'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test glogm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system 'false'
  end
end
