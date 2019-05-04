# -*- coding: utf-8 -*-
from flask import Flask

app = Flask('hello-cloudbuild')


@app.route('/')
def hello():
    return "Hello World 2!\n"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
