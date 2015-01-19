from bs4 import BeautifulSoup
import requests

mack = requests.get("http://www.reddit.com/r/Space").text
soup = BeautifulSoup(mack)
images = soup.find_all("img")
for stuff in images:
    print stuff.get("src")

# returns a list of thumbnails for r/Space front page.
