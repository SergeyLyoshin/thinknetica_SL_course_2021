puts "Enter day: "
day = gets.chomp.to_i

puts "Enter month: "
month = gets.chomp.to_i

puts "Enter year: "
year = gets.chomp.to_i

arr_months = { 
	1=> 31, 
	2=> 28, 
	3=> 31,
	4=> 30, 
	5=> 31, 
	6=> 30, 
	7=> 31, 
	8=> 31, 
	9=> 30, 
	10=> 31, 
	11=> 30, 
	12=> 31 
}

if ((year % 400 == 0)&&(year % 4 == 0)) || (year % 100 != 0)
  arr_months[2] = 29
end

outcome = arr_months.select { |k, v| k < month }
puts "Serial number: #{outcome.values.sum + day}"