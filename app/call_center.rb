class CallCenter
  attr_reader :simulation_time, :agents, :callers
  attr_accessor :queue, :avg_waiting_time, :avg_serving_time

  def initialize(callers = [], agents = [], time_in_minutes = 120)
    @callers = callers
    @agents = agents
    @simulation_time = time_in_minutes
    @queue = []
    @avg_waiting_time = 0
    @avg_serving_time = 0
  end

  def run
    0.upto(simulation_time).each do |minute|
      callers.each do |caller|
        queue << caller if caller.call_at == minute
      end

      agents.each do |agent|
        if agent.on_call?
          agent.decrease_timer
          if agent.time_is_up?
            # close the call, calculate serving time
          end
        else
          caller = queue.shift
          next unless caller

          agent.start_conversation_with(caller)
          caller.update_waiting_time(minute)
        end
      end
    end

    @avg_waiting_time = (callers.sum(&:waited_for) / callers.length).to_f
  end
end
