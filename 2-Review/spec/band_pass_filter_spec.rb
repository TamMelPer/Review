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
end
