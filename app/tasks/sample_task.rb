class SampleTask < TorqueBox::Messaging::Task
  def do_something(payload = {})
    puts "#### SAMPLETASK: Sleeping for #{payload[:sleep_for]}"
    sleep(payload[:sleep_for])
    puts "#### SAMPLETASK: Peter, what's happening?"
  end
end
