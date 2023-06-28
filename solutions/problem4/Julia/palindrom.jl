using Test

function is_palindrom(number::Int)
  n_str = string(number)
  return n_str == reverse(n_str)
end

function find_palindrome(digit::Int)
  n = parse(Int64,"9"^digit)
  half_n = Int64(ceil(n/2))

  res_i = 0
  res_j = 0
  res_palindrom = 0 
  for i in Iterators.reverse(half_n:n)
    for j in Iterators.reverse(half_n:n)
      temp = i*j
      if is_palindrom(temp)
        if temp>res_palindrom
          res_i = i
          res_j = j
          res_palindrom = temp
        end
      end
    end
  end
  return (res_i,res_j,res_palindrom)
end

function main()
  @test is_palindrom(9009)
  @test is_palindrom(90109)
  @test is_palindrom(1234) == false



end
