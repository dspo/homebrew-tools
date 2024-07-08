# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitTodo < Formula
  desc "git todo extension"
  homepage "https://github.com/dspo/git-todo"
  url "https://github.com/dspo/git-todo/archive/refs/tags/v0.0.2.tar.gz"
  version "v0.0.2"
  sha256 "828b674f18a9861fd320aac54b8efc7260296a54cc3fb1c9f9f7b5d709d2e18e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "git-todo"
    bin.install "target/release/git-todo"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-todo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
