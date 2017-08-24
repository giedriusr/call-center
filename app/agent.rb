require File.expand_path('../person.rb', __FILE__)

class Agent < Person
  attr_accessor :minutes

  def initialize(name)
    super(name)
    @minutes = 0
  end

  def on_call?
    minutes > 0
  end

  def start_conversation_with(caller)
    @minutes = caller.call_length
  end

  def decrease_timer
    @minutes -= 1
  end

  def time_is_up?
    minutes == 0
  end
end
