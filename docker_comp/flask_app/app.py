from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h2>Hello World</h2>'

if __name__ == '__name__':
    app.run(debug=True, host='0.0.0.0')


