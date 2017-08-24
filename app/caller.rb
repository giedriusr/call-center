require File.expand_path('../person.rb', __FILE__)

class Caller < Person
  attr_reader :call_length, :call_at, :waited_for

  def initialize(name, call_length = 2, call_at_minute = 0)
    super(name)

    @call_length = call_length
    @call_at = call_at_minute
    @waited_for = 0
  end
end
