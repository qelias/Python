def display_board(board):
    #Display the current playing board
    print(f" {board[7]} | {board[8]} | {board[9]}")
    print("-----------")
    print(f" {board[4]} | {board[5]} | {board[6]}")
    print("-----------")
    print(f" {board[1]} | {board[2]} | {board[3]}\n\n")

def player_input():
    #Ask the first player to go which marker he wants to play with
    player_input=''
    X_O=['X','O']
    while player_input not in X_O:
        player_input=input("Choose your marker, X or O: ")
    return player_input

def place_marker(board,marker,position):
    #Place marker (x or O) at the position (1-9) of the current board
    board[position]=marker

def win_check(board,mark):
    #Check if a mark (X or O) has 3 aligned along a row,line or diagonal, return TRUE if it is the case
    if board[1]==mark and board[4]==mark and board[7]==mark:
        return True
    elif board[2]==mark and board[5]==mark and board[8]==mark:
        return True
    elif board[3]==mark and board[6]==mark and board[9]==mark:
        return True
    elif board[1]==mark and board[2]==mark and board[3]==mark:
        return True
    elif board[4]==mark and board[5]==mark and board[6]==mark:
        return True
    elif board[7]==mark and board[8]==mark and board[9]==mark:
        return True
    elif board[1]==mark and board[5]==mark and board[9]==mark:
        return True
    elif board[7]==mark and board[5]==mark and board[3]==mark:
        return True
    else:
        return False

def choose_first():
    #Randomizes which player goes first
    from random import randint
    first=randint(1,2)
    print(f"Player {first} goes first ")
    return first

def space_check(board, position):
    #Check if position (1-9) of the board is empty, return TRUE if it is the case
    return ' ' in board[position]

def full_board_check(board):
    #Check if the board if full, return True if it is the case
    for i in board:
        if i == ' ':
            return False
    return True

def player_choice(board):
    #Ask the current player to choose an valid, empty cell to place his marker on
    choice='0'
    position_check=False
    valid_choices=[str(x) for x in range(1,10)]
    while choice not in valid_choices or choice.isdigit()==False or position_check==False:
        choice=input("Please select an empty cell (from 1 to 9): ")
        if choice.isdigit()==False:
            print("Please type a digit")
        elif choice not in valid_choices:
            print("Please chose a value between 1 and 9")
        elif space_check(board,int(choice))==False:
            print("Please choose an empty cell")
        else:
            position_check=True
    return int(choice)

def replay():
    #Ask to play again
    choice=''
    while choice not in ["Yes","No"]:
        choice=input("Play again ? Type Yes or No: ")
    if choice=="Yes":
        return True
    else:
        return False


print('Welcome to this stupid game')

while(True):
    #Set up empty board
    board=[' ' for x in range(10)]
    board[0]='#'
    display_board(board)

    #Randomize first player
    first=choose_first()

    #First player chooses mark
    print(f"Player {first} chooses his mark")
    first_player_mark=player_input()

    if first_player_mark=="X":
        second_player_mark="O"
    else:
        second_player_mark="X"
    #Label for first and second player
    if first == 1:
        second=2
    else:
        second=1

    #Game goes on if board is not full yet
    while not full_board_check(board):

        display_board(board)

        #First player's turn
        print(f"Player {first}'s turn")
        position=player_choice(board)
        place_marker(board,first_player_mark,position)
        display_board(board)
        #check for winning mark
        if win_check(board,first_player_mark):
            display_board(board)
            print(f"Player {first} wins!")
            break
        #check if board is filled
        if full_board_check(board):
            display_board(board)
            print("Game is a tie")
            break

        print(f"Player {second}'s turn")
        position=player_choice(board)
        place_marker(board,second_player_mark,position)
        display_board(board)
        #check for winning mark
        if win_check(board,second_player_mark):
            display_board(board)
            print(f"Player {first} wins!")
            break
        #check if board is filled
        if full_board_check(board):
            display_board(board)
            print("Game is a tie")
            break
    
    if not replay():
        break
        