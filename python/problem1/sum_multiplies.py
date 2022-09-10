from audioop import mul


import  numpy as np

def multipliers_sum(num_arr, divisors):
    mask = np.zeros(num_arr.shape,dtype=bool)
    for divisor in divisors:
        mask = np.bitwise_or(mask,(num_arr%divisor==0))
    return np.sum(num_arr[mask])


if __name__=='__main__':
    lst = np.arange(100000)+1
    divs = np.array([3,5])
    divs = np.arange(1,1000)
    print(multipliers_sum(lst,divs))
    
