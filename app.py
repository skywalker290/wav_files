from flask import Flask, request
import os
from cloner import *

app = Flask(__name__)

@app.route("/")
def hello():
    MY_KEY = "7865"

    KEY = request.args.get('KEY')
    
    if(KEY):
        if(KEY!=MY_KEY):
            return "Authorisation Failed [Incorrect Credentials]!"
    
    else:
        return "Authorisation Failed [Key Not Found]!"
    
    input_wav = request.args.get('input_wav') 
    language = request.args.get('language') 
    input_text = request.args.get('text')

    output_file = "output.wav"
    input_file = "obama.wav"
    model_name = "tts_models/multilingual/multi-dataset/xtts_v2"
    output_language = "en"
    text=""

    if(input_wav):
        input_file = input_wav
    if(language):
        output_language = language
    if(input_text):
        text = input_text
    else:
        return "Pass the Text!"
    
    cloner(text=text,lang=output_language,input_wav=input_file,output_file=output_file)

    return f"<body><a href='{os.getcwd()+'/'+output_file}'>File Link!</a></body>"

if __name__ == "__main__":
    app.run()


# http://127.0.0.1:5000/?text=hello%20my%20name%20is%20ayush&input_wav=obama.wav&language=en
