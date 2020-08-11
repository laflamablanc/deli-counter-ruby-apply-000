# Write your code here.

def line(order)
  queue = "The line is currently:" 
  if order.length == 0                    #conditional that checks if line is empty
    puts "The line is currently empty."   #if line is empty, returns this message
  else
    order.each_with_index do |person,idx| #if the line not empty, iterates through
      place_in_line = (idx + 1).to_s      #sets place in line equal to the index + 1
                                          #and converts it to a string. First person
                                          #in line (index 0) would be 0+1 = 1
      queue += " #{place_in_line}. #{order[idx]}" #thought cleaner than concatenating
    end
    puts queue
  end
end

#If Each With Index is Not Allowed
#   else
#     place = 1
#     katz_deli.each do |person|
#       positions << "#{place}. #{person}"
#       number += 1
#     end
#     puts "The line is currently: #{positions.join(" ")}"
#   end
# end

def take_a_number(line, name)
  line << name                          #shovels persons name to end of line array
  
  puts "Welcome, #{name}. You are number #{line.length} in line."
  
end

count = 0

def take_a_number(line)
  count +=1
  return count
end

def now_serving(line)
  if line.length == 0
    puts "There is nobody waiting to be served!"
  else
    serving = line.shift              #removes 1st value from line & stores in serving
    puts "Currently serving #{serving}."
  end
end
  