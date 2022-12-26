# Project Euler: solution for problem 2


membig = Dict(
    1=>BigInt(1),
    2=>BigInt(1)
)

"""
    fib(n)

Returns the n-th Fibonacci number. Memorizes intermediate results as `BigInt`.
Only positive value for n are allowed.
"""
function fib(n)
    if haskey(membig,n)
        return membig[n]
    else
        temp = fib(n-2) + fib(n-1)
        membig[n] = temp
        return temp
    end
end

function sum_fibs(upper)
    s = BigInt(0)
    n = BigInt(1)
    f = BigInt(0)
    #for i in BigInt.(1:100)
    while f <=upper
        
        f = fib(n)
        if f%2==0
            s += f
        end
            
        n += BigInt(1)
    end
    s
end

@show sum_fibs(BigInt(4_000_000))
