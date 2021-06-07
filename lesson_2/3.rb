def fib (n)
  return 0 if n == 0
  return 1 if n == 1 or n == 2

  x = 0
  y = 1

  (2..n).each do
    z = (x + y)
    x = y
    y = z
  end

  return y
end

print (0..11).map { |n| fib(n) }

# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]