class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://github.com/vacaboja/tg"
  head 'https://github.com/vacaboja/tg.git', :branch => 'master'

  depends_on "gtk+"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "make"
    bin.install "tg"
  end

  test do
    system "#{bin}/tg"
  end
end
