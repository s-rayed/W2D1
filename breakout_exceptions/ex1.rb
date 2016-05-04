# An exception is a special kind of object, an instance of the class Exception or a descendant of that class that represents some kind of exceptional condition; it indicates that something has gone wrong.

puts "Enter a numerator: "
num = gets.chomp.to_i
puts "Enter a denominator: "
den = gets.chomp.to_i
frac = num / den
puts frac
