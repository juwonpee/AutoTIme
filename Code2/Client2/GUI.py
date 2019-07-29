import tkinter as tk
import networking as network

class mainGUI(tk.Tk):
    def __init_(self, *args, **kwarg):

        tk.Tk.__init__(self, *args, **kwargs):
        container - tk.Frame(self)

        container.pack(side = "top", fill="both", expand=True)
        container.grid_rowconfigure