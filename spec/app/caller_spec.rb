require File.expand_path('../../../app/caller.rb', __FILE__)

RSpec.describe Caller do
  describe 'object values on initialization' do
    let(:caller) { Caller.new('Dylan', 5, 12) }

    it 'sets proper name' do
      expect(caller.name).to eq('Dylan')
    end

    it 'sets proper call_length' do
      expect(caller.call_length).to eq(5)
    end

    it 'sets proper call_at' do
      expect(caller.call_at).to eq(12)
    end
  end
end
