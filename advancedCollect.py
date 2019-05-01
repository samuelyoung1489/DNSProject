import requests
from bs4 import BeautifulSoup
import re


site = requests.get("https://www.google.dz/search?q=see")
soup = BeautifulSoup(site.content)
links = soup.findAll("a")

for link in  soup.find_all("a",href=re.compile("(?<=/url\?q=)(htt.*://.*)")):
    print re.split(":(?=http)",link["href"].replace("/url?q=",""))
