require File.expand_path('../../../app/agent.rb', __FILE__)

RSpec.describe Agent do
  describe 'object creation' do
    it 'creates new agent with given name' do
      agent = Agent.new('John')
      expect(agent.name).to eq('John')
    end
  end
end
