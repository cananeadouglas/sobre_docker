from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
#import time
url = 'https://www.google.com'

# Caminho para o ChromeDriver

browser = webdriver.Chrome()
browser.get(url)


browser.quit()