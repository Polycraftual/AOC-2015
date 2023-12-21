input = File.open("./input.txt").read.split("\n")

nice_rows = 0

def double_letter?(row)
    double_letter = false
    row.split("").each_cons(2) do |a,b|
        double_letter = true if a == b
    end
    return double_letter
end

naughty_or_nice = input.each do | row |

    if row.scan(/[aeiou]/).count < 3
        next
    elsif  !double_letter?(row)
        next
    elsif row.include?("ab") || row.include?("cd") || row.include?("pq") || row.include?("xy")
        next
    else
        puts row
        nice_rows = nice_rows+1

    end
    
end

pp nice_rows
