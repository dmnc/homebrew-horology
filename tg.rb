class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://tg.ciovil.li"
  url "https://github.com/vacaboja/tg.git", :tag => "v0.4.0"
  version "0.4.0"
  head "https://github.com/vacaboja/tg.git", :branch => "master"

  devel do
    url "https://github.com/vacaboja/tg.git", :branch => "test"
    version "0.5.0"
  end

  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "make"
    bin.install "build/tg"
    mv "#{bin}/tg", "#{bin}/tg-timer"
    man1.install "docs/tg-timer.1.gz"
  end

  test do
    system "man tg-timer"
  end
end
