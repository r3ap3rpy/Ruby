weekend = proc {|time| time.saturday? || time.sunday?}
weekday = proc {|time| time.wday < 6}

case Time.now
when weekend then puts "This is so much fun!"
when weekday then puts "This is NOT so much fun!"
end

date = `time /t`
puts "This is the time now: #{date}"

# on fail = nil, on success = true
date = system "time /t"
puts "This is also the time now: #i{date}"

BEGIN {puts "This will be executed begfore the procs"}
END {puts "This will be executed last!"}



