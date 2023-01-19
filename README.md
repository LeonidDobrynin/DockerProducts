#Собрал образ

docker build . --tag=stockprod 

#Запустил образ

docker run --rm -d --publish 8000:8000 stockprod