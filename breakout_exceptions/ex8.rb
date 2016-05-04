class NoSuchFileOrDirectoryFound < Errno::ENOENT
end

class JumpHighError < NoSuchFileOrDirectoryFound
end

def readlines(file_name)
  begin
    File.open(file_name, 'r') do |f|
      while line = f.gets
        puts line
      end
    end
  rescue JumpHighError => e
    puts e
    start
  end
end

def start
  puts "What file would you like to open: "
  file_name = gets.chomp
  readlines(file_name)
end

start
