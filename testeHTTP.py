#Testa a conexão HTTP.
import http.client

conn = http.client.HTTPConnection("192.168.56.105")
conn.request("HEAD", "/teste.html")

r1 = conn.getresponse()  

print(r1.status, r1.reason)