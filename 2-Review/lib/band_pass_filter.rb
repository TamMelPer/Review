class BandPassFilter

  def initialize(soundwave, min_frequency, max_frequency)
    @soundwave = soundwave
    @min_frequency = min_frequency
    @max_frequency = max_frequency
  end

  def filter
    @soundwave.map! do |frequency|
      if frequency < @min_frequency
        frequency = @min_frequency
      elsif frequency > @max_frequency
        frequency = @max_frequency
      else
        frequency
      end
    end
    @soundwave
  end

end
