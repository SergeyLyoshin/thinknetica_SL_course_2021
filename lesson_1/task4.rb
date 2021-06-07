puts "Enter 1 coefficient: "
a = gets.chomp.to_i

puts "Enter 2 coefficient: "
b = gets.chomp.to_i

puts "Enter 3 koefficient: "
c = gets.chomp.to_i

D = (b**2 - 4*a*c)

if D > 0
	x1 = (-b + Math.sqrt(D)) &&  x2 = (-b - Math.sqrt(D)) / (2*a)
	puts "Discriminant = #{D}, roots x1 = #{x1} , x2 = #{x2}"

elsif 
	x1 = x2 = -b/(2*a)
    puts "Your discriminant = #{D}, roots x1=x2 = #{x1}"

else D < 0
	puts "Your discriminant = #{D}, no roots"
end