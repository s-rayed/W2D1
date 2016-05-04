class TestingChildrenError < ScriptError

end

begin

raise LoadError, "Oh no im a script error child"

:puts "I am a load error"
rescue NoImplementedError
puts "I am a no implemented Error"
rescue SyntaxError
puts "I am a syntax error"
rescue ScriptError
puts " I am non of the above"
end


