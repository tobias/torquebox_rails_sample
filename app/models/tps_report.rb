class TpsReport < ActiveRecord::Base

  after_create :file_report
  always_background :file_report
  
  def file_report
    puts "### TPSREPORT: Filing '#{report}'"
  end

  def shred_report
    puts "### TPSREPORT: Loading shredder..."
    sleep(5)
    puts "### TPSREPORT: Shredding '#{report}'"
  end
end
