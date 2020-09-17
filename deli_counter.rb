require 'pry'

def line(people)
    if people.empty?
        puts "The line is currently empty."
    else 
        binding.pry
        positions = people.map.with_index(1) {|person, index| "#{index}. #{person}"} 
        first_element = "The line is currently:"
        positions.unshift(first_element)
        positions_string = positions.join(" ")
        puts positions_string
    end
end