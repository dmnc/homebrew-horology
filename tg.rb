class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://github.com/vacaboja/tg"
  head 'https://github.com/vacaboja/tg.git', :branch => 'test'

  depends_on "gtk+"
  depends_on "portaudio"
  depends_on "fftw" => "with-openmp"

  def install
    system "make"
    bin.install "tg"
    bin.install "tg-lt"
  end

  test do
    system "#{bin}/tg"
  end
end
