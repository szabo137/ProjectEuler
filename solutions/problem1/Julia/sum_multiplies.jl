# Project Euler: solution for problem 1

function sum_multiplies(n::Int)
    s = 0
    for i in 1:n-1
        if (i%3==0) | (i%5==0)
            s+=i
        end
    end
    s
end

@show sum_multiplies(1000)
