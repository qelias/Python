import tkinter as tk
import numpy as np

window = tk.Tk()
window.title('Farenheit to Celsius')

# window.columnconfigure([0,1,2,3,4],weight=1,minsize=50)
# window.rowconfigure(0,weight=1,minsize=50)

def convert():
    result = np.round((5/9)*(float(ent_temperature.get())-32),2)
    lbl_result["text"] = str(result)

frame_farenheit = tk.Frame(master=window)
ent_temperature = tk.Entry(master=frame_farenheit)
lbl_farenheit = tk.Label(master=frame_farenheit,text="\N{DEGREE FAHRENHEIT}")

frame_celsius = tk.Frame(master=window)
lbl_result = tk.Label(master=frame_celsius)
lbl_celsius = tk.Label(master=frame_celsius,text="\N{DEGREE CELSIUS}" )


btn_convert = tk.Button(text="\N{RIGHTWARDS BLACK ARROW}",command=convert)

frame_farenheit.grid(row=0,column=0,pady=10,padx=10)
ent_temperature.grid(row=0,column=0,sticky="e")
lbl_farenheit.grid(row=0,column=1,sticky="w")

btn_convert.grid(row=0,column=1,pady=10,padx=10)

frame_celsius.grid(row=0,column=2,pady=10,padx=10)
lbl_result.grid(row=0,column=0,sticky="e")
lbl_celsius.grid(row=0,column=1,sticky="w")

window.mainloop()