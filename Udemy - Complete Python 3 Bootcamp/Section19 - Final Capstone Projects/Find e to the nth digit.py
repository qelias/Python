import decimal # Module for high precision calculation
import math




def exponential_series():
    '''
    Use the exponential infinite series to find the value of e (=exp(1))
    '''
    sum=0
    k=0
    e=decimal.Decimal(0)
    while True:
        new_e=e
        #print(f'k = {k}\n')
        sum+= 1/(decimal.Decimal(math.factorial(k)))
        e=sum
        
        if e == new_e:
            break
        
        k+=1

    return k,e


def shell():
    while True:
        try:
            precision = int(input('How many digits do you want ?'))
            break
        except:
            print('Please enter an integer')
    decimal.getcontext().prec = precision
    k,e = exponential_series()
    print(f'k = {k}\n\ne = {e}')
    


if __name__=="__main__":

    shell()

