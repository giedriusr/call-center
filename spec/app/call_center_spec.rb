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

  describe '#run' do
    let(:caller_one) { Caller.new('Tyson', 3, 0) }
    let(:caller_two) { Caller.new('David', 3, 0) }
    let(:caller_three) { Caller.new('Rosie', 4, 0) }

    let(:agent) { Agent.new('Smith') }

    it 'simulates call center and calculates average caller waiting time' do
      call_center = CallCenter.new([caller_one, caller_two, caller_three], [agent], 10)
      call_center.run

      expect(call_center.avg_waiting_time).to eq(4)
    end
  end
end
