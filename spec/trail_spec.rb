require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Trail do
  before(:each) do
    @trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
  end

  it 'exists' do
    expect(@trail1.name).to eq("Grand Wash")
    expect(@trail1.length).to eq(2.2)
    expect(@trail1.level).to eq(:easy)
  end
end
