class CallCenter
  attr_accessor :avg_waiting_time, :avg_serving_time, :simulation_time, :queue,
               :callers, :agents

  def initialize(callers, agents, time_in_minutes)
    @callers = callers
    @agents = agents
    @simulation_time = time_in_minutes
    @queue = []
    @avg_waiting_time = 0
    @avg_serving_time = 0
  end

  def run
  end
end
