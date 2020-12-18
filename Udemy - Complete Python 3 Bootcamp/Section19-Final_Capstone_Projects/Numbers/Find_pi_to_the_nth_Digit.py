import decimal # Module for high precision calculation
import math




def chudnovsky():
    '''
    Use the Chudnovsky formula and iterate over k to converge to the desired precision for pi
    '''
    sum=0
    k=0
    pi=decimal.Decimal(0)
    while True:
        newpi=pi
        #print(f'k = {k}\n')
        sum+= decimal.Decimal(( decimal.Decimal((12/pow(640320,3/2))) * decimal.Decimal((math.factorial(6*k)*(13591409 + 545140134*k))) / decimal.Decimal ((math.factorial(3*k)*pow(math.factorial(k),3)*pow(-640320,3*k)))))
        pi=1/sum
        
        if pi == newpi:
            break
        
        k+=1

    return k,pi


def shell():
    while True:
        try:
            precision = int(input('How many digits do you want ?'))
            break
        except:
            print('Please enter an integer')
    decimal.getcontext().prec = precision
    k,pi = chudnovsky()
    print(f'k = {k}\n\npi = {pi}')
    


if __name__=="__main__":

    shell()