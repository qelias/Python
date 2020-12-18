#Find number of steps needed to reach one by doing n/2 if n is even and (3*n)+1 if odd

def collatz_conjecture(n):
    '''
    Give number n, return numbers of steps needed
    '''
    initial_n=n
    k=0
    while n != 1:
        if n%2 == 0:
            n/=2
        else:
            n=3*n+1
        k+=1
        print(n)
    print(f"\nNumbers of steps taken for {initial_n} is {k}")

while True:
    try:
        num = int(input('Please enter an integer'))
        break
    except:
        print('INTEGER')
collatz_conjecture(num)