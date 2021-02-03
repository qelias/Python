 
# When you create a Tkinter application, you must call window.mainloop() to start the event loop. 
# During the event loop, your application checks if an event has occurred. If so, then some code can be executed in response.

# The event loop is provided for you with Tkinter, so you don’t have to write any code that checks for events yourself. 
# However, you do have to write the code that will be executed in response to an event. 
# In Tkinter, you write functions called event handlers for the events that you use in your application.

# window.mainloop() does two things for us: 

    # It maintains a list of events that have occurred.
    # It runs an event handler any time a new event is added to that list.

# But we have to define the event handlers ourselves

# to let Tkinter know when to use an event handler, .bind() widget method

#  bind() has two arguments: 

#     An event that’s represented by a string of the form "<event_name>", where event_name can be any of Tkinter’s events
#     An event handler that’s the name of the function to be called whenever the event occurs


import tkinter as tk

window = tk.Tk()

def handle_keypress(event):
    """Print the character associated to the key pressed"""
    print(event.char)

def handle_click(event):
    print("the button was clicked!")

btn1 = tk.Button(text='click me')
btn1.bind("<Button-1>",handle_click) # Button-1 is the left mouse click

btn1.pack()

# Bind keypress event to handle_keypress().
window.bind("<Key>", handle_keypress)

#window.mainloop()

# Every button also has the command attribute to bind a function

window2=tk.Tk()

def decrease():
    value = int(lbl_value["text"]) # to get the value from a label, like a dictionnary: lbl["text"]
    lbl_value["text"] = f"{value - 1}"
def increase():
    value = int(lbl_value["text"])
    lbl_value["text"] = f"{value + 1}"


window2.columnconfigure([0,1,2],weight=1,minsize=50)
window2.rowconfigure(0,weight=1,minsize=50)

number=0

lbl_value = tk.Label(window2,text=str(number))
btn_minus = tk.Button(window2,text="-",command=decrease)
btn_plus = tk.Button(window2,text="+",command=increase)

lbl_value.grid(row=0,column=1)
btn_minus.grid(row=0,column=0)
btn_plus.grid(row=0,column=2)

window2.mainloop()