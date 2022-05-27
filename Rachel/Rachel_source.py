from calendar import c
import urllib.request
import json
from xml.etree.ElementTree import Comment
from gtts import gTTS
from playsound import playsound
import os
import sys
from random import choice
import requests
from lxml import html
from bs4 import BeautifulSoup
from selenium import webdriver
import time

class execute():

    def __init__(self,perceived_sound):
        self.sound = perceived_sound.upper()
        self.split_voice = self.sound.split(" ")
        print(self.split_voice)
        self.commands = ["MERHABA","NASILSIN","HAVA","KAPAT","MÜZIK","ARABA"]

    def speaking(self,content):
        tts = gTTS(text=content,lang="tr")
        tts.save("momentary.mp3")
        playsound("momentary.mp3")
        os.remove("momentary.mp3")
        print(content)

    def close(self):
        self.speaking("Görüşürüz Patron İyi Çalışmalar")
        sys.exit()

    def dont_understand(self):
        self.speaking("Anlayamadım Patron tekrar edebilirimisin")

    def open_nfs(self):
        self.speaking("hız oyunu açılıyor patron")
        os.chdir("D:/Need for Speed Underground 2")
        os.system("SPEED2.EXE")
    
    def weather_forecast(self):
        response = requests.get("https://weather.com/tr-TR/weather/tenday/l/%C4%B0zmir+%C4%B0zmir?canonicalCityId=17b09317e5bb306d3073528dea2d15547eaef2c0cab49255c797b8d7d29d67dd")
        html_icerigi = response.content
        soup = BeautifulSoup(html_icerigi,"html.parser")
        day = soup.find("span",{"class":"DailyContent--daypartDate--2A3Wi"})
        how = soup.find("p",{"class":"DailyContent--narrative--hplRl"})
        tell = "{} günü hava {} Patron.".format(day.text,how.text)
        self.speaking(tell)

    def chat(self):

        source = "İYİDİR PATRON ARKA PLANDA BAZI İŞLERDE ÇALIŞIYORDUM,Bir problem varmı"

        self.speaking(source)

    def hello(self):

        text = "Merhaba Patron,Nasılsın?"

        self.speaking(text)

    def find_command(self):
        for order in self.commands:
            if order in self.split_voice:
                self.run_emir(order)

    def run_emir(self,emir):

        if (emir == "MERHABA"):
            self.hello()
        if (emir == "NASILSIN"):
            self.chat()
        if (emir == "HAVA"):
            self.weather_forecast()
        if (emir == "KAPAT"):
            self.close()
        if (emir == "MÜZIK"):
            self.open_music()
        if (emir == "ARABA"):
            self.open_nfs()




    

    
