require 'band_pass_filter'

describe '#filter' do
  it 'returns the soundwave' do
    beatles = BandPassFilter.new([90], 90, 110)
    expect(beatles.filter).to eq [90]
  end
end
