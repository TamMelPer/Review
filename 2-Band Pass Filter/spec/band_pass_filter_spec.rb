require 'band_pass_filter'

describe '#filter' do
  it 'returns the soundwave' do
    beatles = BandPassFilter.new([90], 90, 110)
    expect(beatles.filter).to eq [90]
  end

  it 'returns the soundwaves with multiple frequencies' do
    beatles = BandPassFilter.new([90,100], 90, 110)
    expect(beatles.filter).to eq [90,100]
  end

  it 'returns a filtered soundwave if a frequency is lower than the min frequency' do
    beatles = BandPassFilter.new([80, 90, 100, 110, 120], 90, 120)
    expect(beatles.filter).to eq [90, 90, 100, 110, 120]
  end

  it 'returns a filtered soundwave if a frequency is higher than the max frequency' do
    beatles = BandPassFilter.new([80, 90, 100, 110, 120], 80, 110)
    expect(beatles.filter).to eq [80, 90, 100, 110, 110]
  end

  it 'returns a filtered soundwave if a frequency is lower or higher than the min/max frequency' do
    beatles = BandPassFilter.new([80, 90, 100, 110, 120], 90, 110)
    expect(beatles.filter).to eq [90, 90, 100, 110, 110]
  end

  it 'returns a filtered soundwave using defaults if mmin/max not provided' do
    beatles = BandPassFilter.new([30, 90, 100, 110, 1110])
    expect(beatles.filter).to eq [40, 90, 100, 110, 1000]
  end


end
