from flask import Flask


app = Flask(__name__)

@app.route('/')
def hello_docker():
    return 'Hello, World. This is Akhilesh Mishra!!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
