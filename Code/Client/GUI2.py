import tkinter as tk
from tkinter import ttk

win = tk.Tk()
#win.attributes("-zoomed", True)
win.state('zoomed')
win.title("mainGUI")

a_label = ttk.Label(win, text = "Enter a name")
a_label.grid(column=0, row=0)


def clickme():
    action.configure(text="Hello " + name.get())


name = tk.StringVar()
name_entered = ttk.Entry(win, width=12, textvariable=name)
name_entered.grid(column=0, row=1)
name_entered.focus()

action = ttk.Button(win, text="click me", command=clickme)
action.grid(column=1, row=1)

win.mainloop()
