require File.expand_path('../../../app/caller.rb', __FILE__)

RSpec.describe Caller do
  describe 'object creation' do
    it 'creates new caller with given name' do
      caller = Caller.new('Dylan')
      expect(caller.name).to eq('Dylan')
    end
  end
end
