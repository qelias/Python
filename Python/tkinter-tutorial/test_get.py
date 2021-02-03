import tkinter as tk
root =tk.Tk()
mystring =tk.StringVar(root)
def getvalue():
    print(mystring.get())
tk.Entry(root,textvariable = mystring,width=100,fg="blue",bd=3,selectbackground='violet').pack()
tk.Button(root, 
                text='Submit', 
                fg='White', 
                bg= 'dark green',height = 1, width = 10,command=getvalue).pack()

root.mainloop()

