#teste2
#Testa a conexão HTTP
import requests

url = "http://192.168.56.105"

def url_ok(url):
    r = requests.head(url)
    return r.status_code == 200

if url_ok(url):
    print("URL acessível")