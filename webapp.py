from flask import Flask
import cpuload_single

app = Flask(__name__)

@app.route('/')
def hello_world():
    cpuload_single.cpuload()
    return 'Hi, World!'

@app.route('/<name>')
def hello_name(name):
    cpuload_single.cpuload()
    return f'Hi, {name}!'
