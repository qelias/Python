import sys

def erathostene_sieve_generator(n):
    yield n
    for i in erathostene_sieve_generator(n+1):
        if i%n!=0:
            yield i


def nats(n):
    yield n
    yield from nats(n+1)


def bla(n):
    for i in range(3):
        yield n
    for i in bla(n+1):
        yield i


def sieve(s):
    n = next(s)
    yield n
    yield from sieve(j for j in s if j%n!=0 )

#NOT GOOD BECAUSE STACK KEEPS GROWING UNTIL RECURSION LIMIT ?

if __name__=="__main__":
    g = sieve(nats(2))
    sys.setrecursionlimit(1000000)
    for i in range(3000):
        print(next(g))