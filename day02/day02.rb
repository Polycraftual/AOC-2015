# Read in the file
input = File.open("./input.txt").read.split("\n")

paper_required = []

input.each do | presents |
    dimension = presents.split("x")

    paper_area = (2 * (dimension[0].to_i * dimension[1].to_i)) + (2 * (dimension[1].to_i * dimension[2].to_i)) + (2 * (dimension[0].to_i * dimension[2].to_i))

    spare = presents.split("x").map(&:to_i).min(2)
    
    spare_area = spare[0].to_i * spare[1].to_i
    
    paper_required.push (paper_area + spare_area)
    puts
end

puts paper_required.sum