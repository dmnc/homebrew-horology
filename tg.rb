class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://github.com/vacaboja/tg"
  url "https://github.com/vacaboja/tg.git", :tag => "v0.4.0-test.1"
  version "0.4.0"
  head "https://github.com/vacaboja/tg.git", :branch => "test"

  depends_on "gtk+"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "make"
    bin.install "build/tg"
    bin.install "build/tg-lt"
    mv "#{bin}/tg", "#{bin}/tg-timer"
    mv "#{bin}/tg-lt", "#{bin}/tg-timer-lt"
    man1.install "docs/tg-timer.1.gz"
  end

  test do
    system "man tg-timer"
  end
end
