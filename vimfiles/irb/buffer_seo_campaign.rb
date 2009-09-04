start_time = Time.now

# urchin_ids = SeoCampaign.find(:all).find_all{|sc| sc.urchin_id != 0}.
#            map{|sc| sc.urchin_id}.sort
# urchin_ids.each do |campaign|
#   begin
#     StatsReport.new(campaign, "foo", "bar").save
#     puts "#{campaign} saved"
#   rescue
#     puts "#{campaign} failed"
#   end
# end

StatsReport.new(1, "foo", "bar").save

time_taken = Time.now - start_time
puts "Generating reports took #{time_taken} seconds"

