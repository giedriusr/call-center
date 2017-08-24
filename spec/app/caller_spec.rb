require 'byebug'
require File.expand_path('../../../app/caller.rb', __FILE__)

RSpec.describe Caller do
  let(:caller) { Caller.new('Dylan', 5, 12) }

  describe 'object values on initialization' do
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

  describe '#update_waiting_time' do
    it 'updates waited_for property when call_at is 12th minute' do
      caller.update_waiting_time(16)
      expect(caller.waited_for).to eq(4)
    end
  end
end
