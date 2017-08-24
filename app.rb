require 'faker'

require File.expand_path('../app/agent.rb', __FILE__)
require File.expand_path('../app/caller.rb', __FILE__)
require File.expand_path('../app/call_center.rb', __FILE__)

callers = []
50.times do |number|
  callers << Caller.new("#{Faker::Name.name} (#{number})", Random.new.rand(2..20), number)
end

agents = []
3.times do |number|
  agents << Agent.new("#{Faker::Name.name} (#{number})")
end

call_center = CallCenter.new(callers, agents, 120)
call_center.run

puts "Average waiting time: #{call_center.avg_waiting_time}\n"
puts "Average serving time: #{call_center.avg_serving_time}"
