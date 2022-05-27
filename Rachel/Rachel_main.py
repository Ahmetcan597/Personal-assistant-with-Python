import speech_recognition as sr
import time
from Rachel_source import execute
import requests
from lxml import html

r = sr.Recognizer()

while True:

    with sr.Microphone() as source:
        print("Bir şeyler söyle.")
        audio = r.listen(source)

    data = ""

    try:
        data = r.recognize_google(audio, language="tr-tr")
        print(data)
        command = execute(data)
        command.find_command()
    except sr.UnknownValueError:
        command.dont_understand()