# Template for satanmoo/homebrew-tap (Formula/ebook-capture.rb).
# .github/workflows/release.yml fills in 0.1.0 and 6ae238ab9a31c7759bbb18e209fef3eaea9bfa39011aa6ad64a290422a23dbe9 and commits
# the result to the tap on every release; don't edit the tap's copy by hand.
class EbookCapture < Formula
  desc "Capture ebook pages from 교보도서관 or a Chrome web viewer into a PDF"
  homepage "https://github.com/satanmoo/ebook-capture"
  url "https://github.com/satanmoo/ebook-capture/releases/download/v0.1.0/ebook-capture-v0.1.0-macos.tar.gz"
  version "0.1.0"
  sha256 "6ae238ab9a31c7759bbb18e209fef3eaea9bfa39011aa6ad64a290422a23dbe9"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "ebook-capture"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ebook-capture --version").strip
  end
end
