class SampleService
  def initialize(opts = {})
    @run = true
    puts "### SAMPLESERVICE initialized"
  end

  def start
    puts "### SAMPLESERVICE starting"
    Thread.new do
      while @run do
        puts "### SAMPLESERVICE thread is awake! sleeping for 15 seconds"
        sleep(15)
      end
    end
  end

  def stop
    puts "### SAMPLESERVICE stopping"
    @run = false
  end
end
