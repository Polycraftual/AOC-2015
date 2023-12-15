# Read in the file
input = File.open("./example.txt").read.split("\n")

paper_required = []
ribbon_required = []

input.each do | presents |
    dimension = presents.split("x").sort

    paper_area = (2 * (dimension[0].to_i * dimension[1].to_i)) + (2 * (dimension[1].to_i * dimension[2].to_i)) + (2 * (dimension[0].to_i * dimension[2].to_i))

    spare = presents.split("x").map(&:to_i).min(2)
    
    spare_area = spare[0].to_i * spare[1].to_i
    
    paper_required.push (paper_area + spare_area)

    ribbon_length = (2 * dimension[0].to_i) + (2 * dimension[1].to_i)

    bow_length = (dimension[0].to_i * dimension[1].to_i * dimension[2].to_i)
    
    ribbon_with_bow = ribbon_length + bow_length
    
    ribbon_required.push ribbon_with_bow

    pp dimension
    # pp ribbon_length
    # pp bow_length
    # pp ribbon_with_bow
    puts

end



# puts paper_required.sum
puts
puts ribbon_required.sum