# begin
#   raise RuntimeError #, "Oh snap!"
# rescue
#   puts $!
#   puts $!.message
#   puts $!.backtrace.inspect
# end

# begin
#   raise "Hello I am a runtime error"
# rescue
#   puts $!
#   puts $!.class
# end

begin
  raise "Hello I am a random runtime error"
  p e.message
  p e.backtrace
end
