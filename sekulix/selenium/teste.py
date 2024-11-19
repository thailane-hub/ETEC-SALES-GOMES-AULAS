# from selenium import webdriver


# #importar a classe keys
# from selenium.webdriver.common.keys import Keys

# from time import sleep

# navegador = webdriver.Chrome("c:driver/chromedriver.exe")

# navegador.get("https://www.google.com.br")

# navegador.find_element_by_name("q").send_keys("Python ")

# #dar enter
# navegador.find_element_by_name("q").send_keys(Keys.ENTER)

# sleep(5)

# navegador.quit()
# versão antiga



# varsão atualizada


from selenium import webdriver


#importar a classe keys
from selenium.webdriver.common.keys import Keys

from time import sleep

navegador = webdriver.Chrome("c:driver/chromedriver.exe")

navegador.get("https://www.google.com.br")

navegador.find_element("name","q").send_keys("Python ")

#dar enter
navegador.find_element("name","q").send_keys(Keys.ENTER)

sleep(5)

navegador.quit()

