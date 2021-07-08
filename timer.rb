def timer
  start_time = Time.now
  yield
  puts "Elapsed time: #{Time.now - start_time}"
end

timer do
  puts "Doing something fast..."
  sleep(1)
  puts "Done sleeping"
end

timer do
  puts "Doing something slower..."
  sleep(3)
  puts "Done sleeping"
end
