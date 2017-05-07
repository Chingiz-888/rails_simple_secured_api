# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...








cingiz-mac$ rails db:seed
You don't have bcrypt installed in your application. Please add it to your Gemfile and run bundle install


$2a$10$/PtaU5vfL3v.wjKvnL3ehO7qEy8vh/s7T1s9eGGYXq8Zeo4BCzsri     - 62 cимвола в password_digest







kLJs7eJNbQmx7B11GfX1c939   -  реально 24 символа в токене
MjuvUN4kJmKMzWogqevGkg7P   -  после вызова команды user.regenerate_token - 
                              он реально обновляется


BCrypt::Password.new('$2a$10$kGcJSatXnssu9D2cOhcVK.uj9UdETR678VftJc.c1Jo8qeOnkOk4y').is_password?('777')

$2a$10$kGcJSatXnssu9D2cOhcVK.uj9UdETR678VftJc.c1Jo8qeOnkOk4y
$2a$10$GU3PK47gzRw28og4pRcdmuk0lZv2TadXZ2SzJ/WkdkbwrO/kQbOE.

Два юзера использовали один и тот же пароль - 777, но password_digest'ы у них все равно у каждого свои







====  ТЕСТИРУЕМ В CURL ============
curl -X POST --data "email=ivan@mail.ru&password=888" http://localhost:3000/login.json

protected API calls
curl -H "Authorization: Token token=wY9qD8hCnzMDH8MWLuRh222c" http://localhost:3000/

sign out
curl -X DELETE -H "Authorization: Token token=wY9qD8hCnzMDH8MWLuRh222c" http://localhost:3000/logout.json







