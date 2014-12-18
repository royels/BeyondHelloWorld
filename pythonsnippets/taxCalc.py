from bs4 import BeautifulSoup
import requests

principal = raw_input("Enter listed price, space, tax of your locality. Or I can find it for you, if you click enter")
list = principal.split(" ")
if len(list) == 2:
    print '%.2f' % (float(list[0]) + (float(list[0]) * float(list[1]) / 100.0))
else:
    state = raw_input("What state are you making the purchase in? (full name) Ex: 'California' ")
    r = requests.get('http://taxfoundation.org/article/state-and-local-sales-tax-rates-2014')
    soup = BeautifulSoup(r.text)
    a_string = soup.find(text=state)
    for stuff in a_string.find_parent("tr"):
        print stuff.string
