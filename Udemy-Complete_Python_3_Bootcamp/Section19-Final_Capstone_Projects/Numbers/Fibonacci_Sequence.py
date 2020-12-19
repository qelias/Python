 

def fibonacci_recursive(n):

    if n == 0 or n == 1:
        return 1
    else:
        return fibonacci_recursive(n-1) + fibonacci_recursive(n-2)

def fibonacci_generator(n):

    a,b=0,1
    for _ in range(n):
        yield b
        a,b=b,a+b


if __name__ == "__main__":

    method = 0
    while method not in [1,2]:
        method = int(input('Choose your method: recursive = 1, generator = 2'))
    while True:
        try:
            n = int(input('Choose the numver of digits'))
            break
        except:
            print('Please enter an integer')

    if method == 1:
        fibo=[]
        for i in range(n):
            fibo.append(fibonacci_recursive(i))
        
    elif method == 2:
        fibo=[]
        for i in fibonacci_generator(n):
            fibo.append(i)

    print(fibo)