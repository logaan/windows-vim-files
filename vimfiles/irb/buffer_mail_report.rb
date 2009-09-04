report = Report.new("colin.campbell-mcpherson@webfirm.com", 1.month.ago, 1.day.ago)
report.attach(StatsReport.new(1, "Jim's Mowing", "www.jimsmowing.com.au").save, "stats_report.html", "text/html")
report.deliver!

