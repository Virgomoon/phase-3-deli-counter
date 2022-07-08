require 'pry'

katz_deli = []

def line queue
    if queue == []
      puts "The line is currently empty."
    else 
        current_line = "The line is currently:"
        queue.each.with_index(1) do |person, idx|
          current_line << " #{idx}. #{person}"
        end
        puts current_line
end
end

def take_a_number(queue, name)
    queue << name
    puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def now_serving queue
    if queue == []
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{queue.first}."
        queue.shift
    end
end