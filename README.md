#Собрал образ

docker build . --tag=stockprod 

#Запустил образ

docker run --rm -d --publish 8000:8000 stockprod

#Проверил работоспособность реквестом (POST запрос)

![image](https://i.ibb.co/XyVY59r/Sreenshot-43.png "POST запрос")