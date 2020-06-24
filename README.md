# Подготовка приложения к тестированию на СУБД PostgreSQL (образ 12.0-alpine)
## Краткое описание
Репозиторий содержит следующие файлы:

* db-api.jar (приложение)
* application.properties( файл для хранения конфигурационных параметров приложения)
* docker-compose.yml(настройка для запуска контейнера PostgreSQL)


Важно: для удаления всех данных (и начала с чистого листа) нужно:

```
docker-compose down

```
 (в каталоге с файлом docker-compose.yml)
удалите каталог для хранения данных data
запустите заново 

```
docker-compose up 
```

## Руководство использования

* Для запуска контейнера PostgreSQL выполните:

```
docker-compose up
```
* Для запуска приложения выполните:

```
java -jar db-api.jar
```

* Проверить успешность:
отправка GET-запроса на http://localhost:9999/api/cards выдаст вам JSON с картами:

```
[ 
   { 
      "id":1,
      "name":"Альфа-Карта Premium",
      "description":"Альфа-Карта вернёт ваши деньги",
      "imageUrl":"/alfa-card-premium.png"
   },
   { 
      "id":2,
      "name":"Alfa Travel Premium",
      "description":"Самая выгодная карта для путешествий",
      "imageUrl":"/alfa-card-travel.png"
   },
   { 
      "id":3,
      "name":"CashBack Premium",
      "description":"Заправь свою карту. Кэшбэк на АЗС, в кафе и ресторанах",
      "imageUrl":"/alfa-card-cashback.png"
   }
]
```
