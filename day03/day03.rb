input = File.open("./input.txt").read

x = 0
y = 0

coords = [[0,0]]

santa = []
robo = []

input.chars.each_with_index do | action, index |
    if index.even?
        santa.push action
    else
        robo.push action
    end
end

santa.each do | move |
    if move == "^"
        y = y+1
        coords.push [x,y]
    elsif move == ">"
        x = x+1
        coords.push [x,y]
    elsif move == "v"
        y = y-1
        coords.push [x,y]
    elsif move == "<"
        x = x-1
        coords.push [x,y]
    end
end

x = 0
y = 0

robo.each do | move |
    if move == "^"
        y = y+1
        coords.push [x,y]
    elsif move == ">"
        x = x+1
        coords.push [x,y]
    elsif move == "v"
        y = y-1
        coords.push [x,y]
    elsif move == "<"
        x = x-1
        coords.push [x,y]
    end
end

pp coords.uniq.count