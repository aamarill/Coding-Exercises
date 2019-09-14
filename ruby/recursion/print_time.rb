SECONDS_PER_MINUTE = 60
SECONDS_PER_HOUR   = SECONDS_PER_MINUTE * 60
SECONDS_PER_DAY    = SECONDS_PER_HOUR   * 24
SECONDS_PER_WEEK   = SECONDS_PER_DAY    * 7
SECONDS_PER_MONTH  = SECONDS_PER_WEEK   * 4

# Part of the WIP refactor
# TIME_MAP = {
#   minutes: SECONDS_PER_MINUTE,
#   hours: SECONDS_PER_HOUR,
#   days: SECONDS_PER_DAY,
#   weeks: SECONDS_PER_WEEK,
#   months: SECONDS_PER_MONTH
# }

def time(int)
  date = ""

  if int < 60
    return "#{int} seconds"
  end

  # This doesn't work and I don't know why
  # but leaving here to track progress to get a cleaner solution
  # TIME_MAP.each do |unit, n_seconds|
  #   if int / n_seconds > 0
  #     date << "#{int / n_seconds} #{unit}, "
  #     date << time(int % n_seconds)
  #   end
  # end
  # return date

  if int / SECONDS_PER_MONTH > 0
    date << "#{int / SECONDS_PER_MONTH} months, "
    date << time(int % SECONDS_PER_MONTH)
  elsif int / SECONDS_PER_WEEK > 0
    date << "#{int / SECONDS_PER_WEEK} weeks, "
    date << time(int % SECONDS_PER_WEEK)
  elsif int / SECONDS_PER_HOUR > 0
    date << "#{int / SECONDS_PER_HOUR} hours, "
    date << time(int % SECONDS_PER_HOUR)
  elsif int / SECONDS_PER_MINUTE > 0
    date << "#{int / SECONDS_PER_MINUTE} minutes, "
    date << time(int % SECONDS_PER_MINUTE)
  end
end

p time(463456473) # => "191 months, 2 weeks, 49 hours, 54 minutes, 33 seconds"
