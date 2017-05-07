## Securing An API with Token Based Authentication
## Простой защищенный API на базе токенов (еще не JWT)

В общем, приложение на основе урока https://rubyplus.com/articles/4311-Securing-an-API-in-Rails-5-using-Token-Based-Athentication 


Интересно тем, что не используется никакой гем-хелпер (например, Knock), а все создается руками


Генерируемый токен - это 24 символьная строка
После вызова user.regenerate_token она пересоздается, что исключает ее повторы







====  ТЕСТИРУЕМ В CURL ============


curl -X POST --data "email=ivan@mail.ru&password=888" http://localhost:3000/login.json

protected API calls
curl -H "Authorization: Token token=wY9qD8hCnzMDH8MWLuRh222c" http://localhost:3000/

sign out
curl -X DELETE -H "Authorization: Token token=wY9qD8hCnzMDH8MWLuRh222c" http://localhost:3000/logout.json







