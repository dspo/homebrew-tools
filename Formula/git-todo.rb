# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitTodo < Formula
  desc "git todo extension"
  homepage "https://github.com/dspo/git-todo"
  url "https://github.com/dspo/homebrew-git-todo/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "7ebc6843def860b673919614a68fff86ae82f3de80064c7c6fc96996d911a086"
  license ""
  version "0.0.1"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "git-todo"
    bin.install "target/release/git-todo"
  end
end
