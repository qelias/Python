import random

suits = ('Hearts', 'Diamonds', 'Spades', 'Clubs')
ranks = ('Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King', 'Ace')
values = {'Two':2, 'Three':3, 'Four':4, 'Five':5, 'Six':6, 'Seven':7, 'Eight':8, 
            'Nine':9, 'Ten':10, 'Jack':10, 'Queen':10, 'King':10, 'Ace':11} #ace can be 1 or 11

class Card:
    def __init__(self,suit,rank):
        """
        docstring
        """
        self.suit=suit
        self.rank=rank
        self.value=values[rank]

    def __str__(self):
        """
        docstring
        """
        return f"{self.rank} of {self.suit}"

    def __int__(self):
        """
        docstring
        """
        return self.value

class Deck:
    def __init__(self):
        """
        docstring
        """        
        self.current_cards=[]

        for suit in suits:
            for rank in ranks:
                self.current_cards.append(Card(suit,rank))
    
    def shuffle(self):
        """
        docstring
        """
        random.shuffle(self.current_cards)

    def deal_one(self):
        """
        docstring
        """
        return self.current_cards.pop()

    def __int__(self):
        """
        docstring
        """
        return len(self.current_cards)

class Player:
    def __init__(self,name,current_bet=0,current_sum=0):
        """
        docstring
        """
        self.name=name
        self.current_hand=[]
        self.current_bet=current_bet
        self.current_sum=current_sum

    def add_cards(self, cards):
        """
        docstring
        """
        if type(cards) == type ([]):
            self.current_hand.extend(cards)
        else:
            self.current_hand.append(cards)

    def deal_one(self, card):
        """
        docstring
        """
        return self.current_hand.pop()
    
    def bet(self, bank_account):
        """
        docstring
        """
        while True:
            try:
                amount=int(input("Choose an amount to bet: "))
            except:
                print("Invalid bet")
                continue
            if amount>bank_account.balance:
                print(f"Insufficient funds: current balance is {bank_account.balance}")
            else:
                bank_account.balance-=amount
                self.current_bet=amount
                print(f"{self.name} bets {self.current_bet}. Current balance is {bank_account.balance}")
                break

class Bank:
    """
    docstring
    """
    def __init__(self,name,balance):
        self.name=name
        self.balance=balance

    def deposit(self):
        """
        docstring
        """
        while True:
            try:
                amount=int(input(f"Choose an amount to deposit to {self.name}'s bank account"))
                break
            except:
                print("Please enter a valid amount")
        self.balance+=amount
        print(f"{amount} were deposited on {self.name}'s account. Current balance is {self.balance}")

    def withdraw(self):
        """
        docstring
        """
        while True:
            try:
                amount=int(input(f"Choose an amount to withdraw from {self.name}'s bank account"))
                break
            except:
                print("Please enter a valid amount")

        if(amount>self.balance):
            print(f"Insufficient funds ! Current balance is {self.balance}")
            return None
        else:
            self.balance-=amount
            print(f"{amount} were whithdrawn from {self.name}'s bank account. Current balance is {self.balance}")
            return amount
    def __str__(self):
        print(f"Account owner is {self.name} and current balance is {self.balance}")

    def __int__(self):
        print(f"Current balance is {self.balance}")


def add_value(card,player):
    if card.rank=='Ace' and player.name!='Dealer':
        ace_value=0
        while (ace_value != 1) and (ace_value != 11):
            while True:
                try:
                    ace_value=int(input("Choose a value for your ace, 1 or 11: "))
                    print(ace_value)
                    break
                except:
                    continue
        player.current_sum+=ace_value
    else:
        player.current_sum+=card.value


def replay():
    replay=''
    while replay not in ['Yes','No']:
        replay=input("Play again ? Type Yes or No")
    if replay=='Yes':
        return True
    else:
        return False
#GAME SETUP

deck=Deck()
deck.shuffle()

player1=Player("Bob")
dealer=Player("Dealer")

player1_bank=Bank("Bob",100)
dealer_bank=Bank("Dealer",200000)

#Game begins
while True:

    deck=Deck()
    deck.shuffle()
    player1.current_sum=0
    dealer.current_sum=0

    #Players place their bet
    if player1_bank.balance==0:
        print(f"{player1.name} no longer has funds and cannot play the game further !. Exiting game.")
        break
    else:
        player1.bet(player1_bank)

    #Player receives two cards face up
    print("\n")
    for i in range(2):
        new_card=deck.deal_one()
        player1.add_cards(new_card)
        print(f"{player1.name} receives a {new_card}")
        add_value(new_card,player1)
    print(f"{player1.name}'s current total is {player1.current_sum}\n")

    #Dealer receives one card face up
    new_card=deck.deal_one()
    dealer.add_cards(new_card)
    print(f"{dealer.name} receives a {new_card} face up")
    add_value(new_card,dealer)
    print(f"{dealer.name}'s current (visible) total is {dealer.current_sum}\n")

    #Dealer receives one car face down
    new_card=deck.deal_one()
    dealer.add_cards(new_card)
    add_value(new_card,dealer)

    hit=True
    while hit:

        choice=''
        while choice not in ['Hit','Stand']:
            choice=input("Choose 'Hit' or 'Stand': ")
        if choice == 'Hit':
            new_card=deck.deal_one()
            player1.add_cards(new_card)
            print(f"{player1.name} receives a {new_card}")
            add_value(new_card,player1)
            print(f"{player1.name}'s current total is {player1.current_sum}")
            if player1.current_sum>21:
                print("BUST!")
                print(f"{player1.name} loses {player1.current_bet} chips to the dealer.")
                dealer_bank.balance+=player1.current_bet
                player1.current_bet=0
                hit=False
            else:
                pass
        else:
            hit=False
    if player1.current_sum>21:
        pass
    else:  

        #Dealer discovers his face down card
        print(f"Dealer's face down card is a {dealer.current_hand[-1]}. Dealer's current total is {dealer.current_sum}")

        #Dealer's turn
        if dealer.current_sum>21:
            print(f"Dealer BUSTS and pays {player1.current_bet} to {player1.name}")
            player1_bank.balance+=2*player1.current_bet
            dealer_bank.balance-=player1.current_bet
            player1.current_bet=0
        elif dealer.current_sum==player1.current_sum==21:
            print(f"Tie, {player1.name} gets his bet back")
            player1_bank.balance+=player1.current_bet
            player1.current_bet=0
        elif player1.current_sum < dealer.current_sum <= 21:
            print(f"Dealer WINS! {player1.name} loses {player1.current_bet} chips to the dealer")

        while dealer.current_sum<=player1.current_sum<=21:
            new_card=deck.deal_one()
            dealer.add_cards(new_card)
            print(f"{dealer.name} receives a {new_card}")
            add_value(new_card,dealer)
            print(f"{dealer.name}'s current total is {dealer.current_sum}\n")
            if dealer.current_sum>21:
                print(f"Dealer BUSTS and pays {player1.current_bet} to {player1.name}")
                player1_bank.balance+=2*player1.current_bet
                dealer_bank.balance-=player1.current_bet
                player1.current_bet=0
            elif dealer.current_sum==player1.current_sum==21:
                print(f"Tie, {player1.name} gets his bet back")
                player1_bank.balance+=player1.current_bet
                player1.current_bet=0
            elif player1.current_sum < dealer.current_sum <= 21:
                print(f"Dealer WINS! {player1.name} loses {player1.current_bet} to the dealer")

    if not replay():
        break