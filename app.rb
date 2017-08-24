require File.expand_path('../app/agent.rb', __FILE__)
require File.expand_path('../app/caller.rb', __FILE__)
require File.expand_path('../app/call_center.rb', __FILE__)

call_center = CallCenter.new
call_center.run

puts "Average waiting time: #{call_center.avg_waiting_time}\n"
puts "Average serving time: #{call_center.avg_serving_time}"
