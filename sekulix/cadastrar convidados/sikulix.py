lista = [
        {
            "nome":"thailane santos",
            "celular":"(15)88899999",
            "confirmado":True
            },
         {
            "nome":"Amanda Bradion",
            "celular":"(15)88899999",
            "confirmado":False
            }
        ]

for item in lista:
    print(item["nome"])
    print(item["celular"])
    print(item["confirmado"])
 


bnt="1724894647847.png"
conv="1724893665317.png"
salv="1724893495980.png"
convidado="1725500472718.png"

click(bnt)
sleep(2)
paste(ucode("http://giovanniguarnieri.com.br/duda/"))
sleep(1)
for item in lista:
    type(Key.ENTER)
    sleep(2)
    type(Key.TAB)
    sleep(2)
    type(Key.TAB)
    sleep(2)
    paste(ucode(item["nome"]))
    sleep(2)
    type(Key.TAB)
    sleep(2)
    paste(ucode(item["celular"]))
    sleep(2)
 

if item["confirmado"]:
    click(conv)
sleep(2)
type(Key.TAB)
click(salv)
sleep(3)
click(convidado)







    
