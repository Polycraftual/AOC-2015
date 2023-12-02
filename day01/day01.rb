# Read in the file
input = File.open("./input.txt").read

# Set the floor to the ground floor (0)
floor = 0

# Move through each character moving up for a ( and down for )
input.each_char.with_index do | move_floor, index |
    if move_floor == "("
        floor = floor + 1
    elsif move_floor == ")"
        floor = floor - 1
    end

    if floor == -1
        puts index + 1
        break
    end
end

puts floor