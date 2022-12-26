# Project Euler: solution for problem 3


using Primes

function max_prime(n::Int)
    pr = factor(n)
    maximum(keys(pr))
end

@show max_prime(600851475143)
