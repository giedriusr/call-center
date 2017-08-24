require File.expand_path('../../../app/call_center.rb', __FILE__)

RSpec.describe CallCenter do
  describe 'Initialization of call center object' do
    it 'creates call center object with given values' do
      call_center = CallCenter.new([], [], 120)

      expect(call_center.simulation_time).to eq(120)
      expect(call_center.agents).to eq([])
      expect(call_center.callers).to eq([])
    end
  end
end
