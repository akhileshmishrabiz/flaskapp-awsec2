from flask import Flask


app = Flask(__name__)

@app.route('/')
def hello_docker():
    return 'Hello, World today is sat - time 6.55'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
