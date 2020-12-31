require 'school_report'

describe '#report' do
  it 'should return "Green: 1" if one green grade is given' do
    expect(report("Green")).to eq "Green: 1"
  end

  it 'should return "Green: 2" if one green grade is given' do
    expect(report("Green, Green")).to eq "Green: 2"
  end

  it 'should return "Green: 1\n Amber: 1" if one green and one amber grade is given' do
    expect(report("Green, Amber")).to eq "Green: 1\n Amber: 1"
  end

  it 'should return "Green: 2\n Amber: 1\n Red: 1" if two greens, one amber & one red grade is given' do
    expect(report("Green, Green, Amber, Red")).to eq "Green: 2\n Amber: 1\n Red: 1"
  end

end
