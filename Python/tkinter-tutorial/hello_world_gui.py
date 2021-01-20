# https://realpython.com/python-gui-tkinter/

import tkinter as tk 




#########################################################
################### Create a main window ################
#########################################################

window = tk.Tk()


#########################################################
################### Add widgets #########################
#########################################################

# Then we can add some so-called "widgets" to add functionnalities to the window

# See doc for all the different widgets
# A Label widget is used to display text or imageand cannot be edited by the user

################### Label widget ########################
#########################################################

# Create a Label widget to add some text to a window
greeting = tk.Label(window,text="HELLLOOOOOOOOOO, this is a greeting !")

# Assign the Label to our window, the window is resized to fit the displayed text
greeting.pack()



# We can also customize the text, specify color using html color names or hexadecimal, adjust height and width. The height and width units are measured as a coefficient
# of a "0" string: this is one width unit is smaller than one height unit. This is used rather than inches or other to ensure consistence across platforms
color = tk.Label(window,text="Colored text", foreground='red', background='yellow', width=len("Colored text"), height=4)
color.pack()

color = tk.Label(window,text="Colored text 2", fg='white', bg='#34A2FE')
color.pack()

################### Button widget ########################
#########################################################

# Button widgets can be configured to call a function when clicked on: similar to a Label that can be clicked with the argument command=function()
# Similar to Label (same syntax)

button = tk.Button(window,text="click me pls",width=23,height=7,fg='black',bg='red')
button.pack()


################### Entry widget ########################
#########################################################

tk.Label(window,text='Please insert your name').pack()
# Entry widgets display a text box to get user input
# Create the Entry widget
e1 = tk.Entry(window,fg='black',bg='green',width=70)
e1.pack()
e1.insert(0,"wololo")
# For now, the user can type text in the box but it is useless

# For it to be useful (be able to uget and use input): three main operations to perform 
# Retrieving text with .get()
# Deleting text with .delete()
# Inserting text with .insert()

# .get() retrieves the text that has been entered in an entry
# it must be binded to an event (i.e. button) so that it can be called when we want to (i.e. when we have entered some text)
# We must use something like StringVar (vraible associated to entry) to save the input as a variable ??
def print_name():
    print (f"{e1.get()}")
tk.Button(window,text='Print',command=print_name).pack()

# .delete() to delete the content of an entry ? specify the index of the character to remove or a range
# .insert() same as for strings 

################### Text widget #########################
#########################################################

# Similar to Entry but text is used to retrieve multi-lines input (i.e. text, paragraph, pages !)

text_box = tk.Text()
text_box.pack()

# We can also use get, etc. but it is slightly different
# .get() must specify the sart index and end index as arguments in a string of the form "<line>.<char>"" (line index starts at 1 ?)
# ex: text_box.get("1.0") retrieves the first character of the first line
# to get all the text: text_box.get("1.0",tk.END)


################### Frame widget #########################
#########################################################

# To organize the layout of widgets. All of widgets have a "master" attribute that's set when instantiated, can control whcih frame a widget is assigned to and then
# organize the frames


frame_a = tk.Frame(window)
frame_a.pack()

frame_b = tk.Frame(window)
frame_b.pack()

# Invisible until we assign a widget to the frame

label_a = tk.Label(master=frame_a,text='in the frame A')
label_a.pack()

label_b = tk.Label(master=frame_b,text='in the frame B')
label_b.pack()

# Can customize the border of the frame by specifying the relief attribute

border_effects = {
    "flat": tk.FLAT,
    "sunken": tk.SUNKEN,
    "raised": tk.RAISED,
    "groove": tk.GROOVE,
    "ridge": tk.RIDGE,
}

for relief_name, relief in border_effects.items():
    frame = tk.Frame(master=window, relief=relief, borderwidth=5)
    frame.pack(side=tk.LEFT)
    label = tk.Label(master=frame, text=relief_name)
    label.pack()

# Run the GUI event loop: listens for EVENTS (mouse, button clicks, ...). any code after it won't run until the windowis closed (mainloop exits)
# window.mainloop()

###############################################################
################### Geometry managers #########################
###############################################################

# .pack() is an example of a geometry manager
# there are two others: .place() and .grid()

# when called, .pack() creates a rectangular area (parcel) sized to the widget and fills the rest of the window with blank space, then centers the widgets (by default)
# we can specifiy the fill attribute so that the frame fills the corresponding area, even if the window is expanded

# we can also specify the side attribute to place the widget: tk.TOP, BOTTOM, LEFT, RIGHT. By default, side is set to tk.TOP

# set expand=True to make the frame expand along with the window
window2 = tk.Tk()

frm_1 = tk.Frame(master=window2,height=100,width=40,bg='red')
frm_1.pack(side=tk.LEFT)

frm_2 = tk.Frame(master=window2,height=100,bg='blue')
frm_2.pack(fill=tk.X)

frm_3 = tk.Frame(master=window2,height=200,width=600,bg='green')
frm_3.pack(fill=tk.Y,side=tk.RIGHT) # doesn't work with Y ? It works if there is no other frame in the way ?

frm_4 = tk.Frame(master=window2,height=150,width=600,bg='yellow')
frm_4.pack(fill=tk.BOTH,expand=True)

#window2.mainloop()

# .place() controls the precise location of a widget; specify the x and y coordinates of the top-left corner of the widget, measured in pixels from the 
# of the window or frame

# It is more precise but can be difficult to manage when dealing with many widgets
# Also the widgets are not expandable with the window (not responsive)

window3 = tk.Tk()

frm_1 = tk.Frame(master=window3, bg='red', width=50,height=50)
frm_1.place(x=0,y=0)



lbl = tk.Label(master=window3,text='label',bg='blue',fg='white')
lbl.place(x=50,y=50)

btn = tk.Button(master=window3,text="click me pls",width=23,height=7,fg='black',bg='red')
btn.place(x=50,y=100)

#window3.mainloop()

# .grid() good compromise
# split a window or frame into rows and columns

window4 = tk.Tk()

# frm_1 = tk.Frame(master=window4)
# frm_1.grid(row=0,column=0)
# lbl_1 = tk.Label(master=frm_1,text='frm1')
# lbl_1.pack()

# frm_2 = tk.Frame(master=window4)
# frm_2.grid(row=2,column=2)
# lbl_2 = tk.Label(master=frm_2,text='frm2')
# lbl_2.pack()


for i in range(3):

    for j in range(3):
        frame = tk.Frame(
            master=window4,
            relief=tk.RAISED,
            borderwidth=1
        )
        frame.grid(row=i, column=j, padx=15, pady=5) # can add padding: surrounds the frame with blank space along x or y
        # can reconfigure elements of grid individually and specify (relative) weight attribute specifies how the frame responds to window resizing (default = 0: not responsive)                             
        # specify: index of row/column, weight, minimum size of the element
        window4.columnconfigure(i, weight=i, minsize=75)
        window4.rowconfigure(i, weight=i, minsize=50)

        
        label = tk.Label(master=frame, text=f"Row {i}\nColumn {j}")
        label.pack(padx=5, pady=5) #can also pad with pack

# can specifiy the position of a label inside a grid element with the sticky parameter: 'n' , 's', 'e', 'w', 'nw' etc.

window4.mainloop()
