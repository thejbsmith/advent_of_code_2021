require '../utilities'

depths = Utilities.parse_input(file_name: "input.txt").map(&:to_i)

count = depths.each_cons(2).count { |a, b| b > a }
pp count