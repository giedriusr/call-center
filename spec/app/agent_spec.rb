require File.expand_path('../../../app/agent.rb', __FILE__)

RSpec.describe Agent do
  let(:agent) { Agent.new('John') }

  describe 'object creation' do
    it 'creates new agent with given name' do
      expect(agent.name).to eq('John')
    end
  end

  describe '#on_call?' do
    it 'returns true' do
      agent.minutes = 2
      expect(agent.on_call?).to be_truthy
    end

    it 'returns false' do
      expect(agent.on_call?).to be_falsey
    end
  end

  describe '#start_conversation_with' do
    it 'sets minutes depending on caller call length' do
      caller = Caller.new('Bob', 10)
      agent.start_conversation_with(caller)
      expect(agent.minutes).to eq(10)
    end
  end

  describe '#decrease_timer' do
    it 'decreases minutes by 1' do
      agent.minutes = 5
      agent.decrease_timer
      expect(agent.minutes).to eq(4)
    end
  end

  describe '#time_is_up?' do
    it 'returns true when call is finished' do
      expect(agent.time_is_up?).to be_truthy
    end

    it 'returns false when agent still talks to caller' do
      agent.minutes = 1
      expect(agent.time_is_up?).to be_falsey
    end
  end
end
