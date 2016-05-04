class TestingChildrenError < ScriptError

end

begin

  raise ScriptError, "Oh no im a script error child"

rescue LoadError
  puts "I am a load error"
rescue NotImplementedError
  puts "I am a no implemented Error"
rescue SyntaxError
  puts "I am a syntax error"
rescue ScriptError
  puts "WTF"
else
  puts " I am non of the above"
end
