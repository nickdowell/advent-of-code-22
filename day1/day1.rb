calories = [0]

File.open('input').each do |line|
  if line.to_i == 0
    calories.append 0
  else
    calories[-1] = calories[-1] + line.to_i
  end
end

puts "The Elf carrying the most Calories is carrying: #{calories.max}"

puts "The top three Elves are carrying #{calories.sort[-3, 3].sum} calories"
