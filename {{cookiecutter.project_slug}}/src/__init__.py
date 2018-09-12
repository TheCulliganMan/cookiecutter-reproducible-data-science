import os

here = os.path.abspath(os.path.dirname(__file__))
os.chdir(here)

def hello_world():
    return "Hello World"
