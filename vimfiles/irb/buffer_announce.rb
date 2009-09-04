def announce(tracker, info_hash)
  open("#{tracker}?info_hash=#{info_hash[0, 20]}").read.bdecode
end

