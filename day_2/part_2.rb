require '../utilities'

movements = Utilities.parse_input(file_name: "input.txt")

@position = { x: 0, y: 0 }
@aim      = 0

def move_forward(n)
  @position[:x] += n
  @position[:y] += @aim * n
end

def move_up(n)
  @aim -= n
end

def move_down(n)
  @aim += n
end

def move(movement)
  direction, amount = movement.split(" ")

  send("move_#{direction}", amount.to_i)
end

movements.each do |movement|
  move(movement)
end

pp @position

pp @position[:x] * @position[:y]