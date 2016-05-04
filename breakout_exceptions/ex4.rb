begin
  raise ZeroDivisionError, "Hey dude I don't like zero" #NameError
rescue ZeroDivisionError => zeroError
  puts zeroError.message
  puts zeroError.backtrace.inspect
end
