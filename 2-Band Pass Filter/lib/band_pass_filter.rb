class BandPassFilter


  def initialize(soundwave, min_frequency = 40, max_frequency = 1000)
    fail 'No Soundwave Found' if soundwave.length < 1
    fail 'Wrong data type' unless soundwave.all? { |e| e.is_a?(Integer) }
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
