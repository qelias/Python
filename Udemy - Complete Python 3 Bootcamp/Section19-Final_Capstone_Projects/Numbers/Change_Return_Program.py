 #calculate the change to be given to as customer


def change_return(amount,price):
    '''
    calculate the change to be given to the customer, who gives "amount" for an article costin "price"
    in euros
    available currencies: 500€, 200€, 100€, 50€, 20€, 10€, 5€, 2€, 1€, 50c, 20c, 10c, 5c(,2c, 1c)
    BONUS: rounding to unity or .5: for .1,.2,.6,7, round down; for .3,.4,.8,.9 round up
    '''
    currencies=[[500,0],[200,0],[100,0],[50,0],[20,0],[10,0],[5,0],[2,0],[1,0],[0.5,0]]
    change = amount - price
    print(f'Your initial change is: {change}')
    decimal = round(change % 1,2)
    change=int(change)

    if decimal in [0.3,0.4,0.5,0.6,0.7]:
        change+=0.5
    elif decimal in [0.8,0.9]:
        change+=1
    
    
    print(f"Your rounded change is: {change}")

    for index,[value,number] in enumerate(currencies):
        currencies[index][1],change = divmod(change,value)

    # Simplified version of rounding as done in belgium, as this version only takes the first digit and always rounds it down
    
    for value,number in currencies:
        if number != 0:
            if value>2:
                item='bills'
            else:
                item='coins'
            print(f'{number}x {value}€ {item}')
        
if __name__=="__main__":

    
    while True:
        try:
            price = float(input('Please specify the price'))
            cash = float(input('Please specify the cash given'))
            break
        except:
            print('Please enter numeric values')    

    change_return(cash,price)