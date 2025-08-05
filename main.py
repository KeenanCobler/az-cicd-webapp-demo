from flask import Flask
import os

app = Flask(__name__, template_folder='templates')

@app.route('/')
def home():
    return "Hello from Azure Flask App with CI/CD!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
