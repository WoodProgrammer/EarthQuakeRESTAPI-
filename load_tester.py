from threading import Thread
import time,random
import urllib2
import requests


def open_api():
    urllib2.urlopen('http://localhost:3000/api/locations/1')
def json_test():
    requests.get('http://localhost:3000/api/locations/1')
    
    
while True:##Big Boy
    #th_test_api = Thread(target=open_api,args=())
    th_test_response = Thread(target=json_test,args=())
    th_test_response.start()

'''
x = 10
def carp():
    global x
    x = x*0
def topla():
    global x
    x = x+ 11

th1 = Thread(target=carp,args=())
th2 = Thread(target=topla,args=())
th2.start()
th1.start()
print(x)

'''
