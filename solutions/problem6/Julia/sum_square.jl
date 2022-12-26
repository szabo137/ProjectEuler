# Project Euler: solution for problem 6

function sum_of_squares(arr)
    sum(arr .^ 2)
end

function square_of_sum(arr)
    sum(arr)^2
end

function diff_sum_squares(arr)
    square_of_sum(arr) - sum_of_squares(arr)
end


@show diff_sum_squares(1:100)
