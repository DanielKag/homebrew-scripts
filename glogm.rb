# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Glogm < Formula
  desc 'Git log with fzf'
  homepage 'https://github.com/DanielKag/scripts/'
  url 'https://github.com/DanielKag/scripts/archive/refs/tags/glogm1.3.tar.gz'
  sha256 'c78ee364ff65c10ec481c3e9ad014b9b3976428651c305299459fe3913023232'
  license 'MIT'

  # depends_on "cmake" => :build
  depends_on 'fzf'
  depends_on 'git-delta'

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["glogm"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"glogm")

    # bin.install 'selek'
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
