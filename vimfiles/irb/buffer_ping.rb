$threadpool = []

(100..200).each do |n|
  $threadpool << Thread.new do
    address = "192.168.0.#{n}"
    puts "can ping #{address}" if Ping.pingecho(address)
  end
end

$threadpool.each{|t| t.join}
