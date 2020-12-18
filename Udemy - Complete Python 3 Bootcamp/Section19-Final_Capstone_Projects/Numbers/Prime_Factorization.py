# Find the prime factors of a given number
#import sys

#from Find_Prime import erathostene_sieve_generator

# def find_primes_for_loop(n):
#     '''
#     find primes up to (including) the given number, that are going to be checked for prime factorization
#     '''
#     primes=[1,2]

#     for i in range(3,n+1):
#         prime = True
#         for j in range(2,i-1):
#             if i%j==0:
#                 prime = False
#                 break
#         if prime == True:
#             primes.append(i)
#     return primes

def find_primes_for_loop(n):
    '''
    find primes up to (including) the given number, that are going to be checked for prime factorization
    '''
    primes=[1,2]

    for i in range(3,n+1):
        prime = True
        for j in primes[1:]:
            if i%j==0:
                prime = False
                break
        if prime == True:
            primes.append(i)
    return primes

    

def find_factors(primes,n,factors=[]):
    '''
    Find prime factors of n
    '''

    if n in primes:
        factors.append(int(n))
        return factors
    else:
        for prime in primes:
            if n % prime == 0:
                factors.append(prime)
                result = n/prime
                primes=[x for x in primes if x<=result]                
                find_factors(primes,result,factors)
                return factors

if __name__ == "__main__":

    while True:
        try:
            n = int(input("Choose a number to find the prime factors of: "))
            break
        except:
            print("Please select an integer")

    primes = find_primes_for_loop(n)
    print(f'primes = {primes}')
    primes.reverse()

    factors = find_factors(primes,n)

    if factors != None:
        print(f'The prime factors are: {factors}')