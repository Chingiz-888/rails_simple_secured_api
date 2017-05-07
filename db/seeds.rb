# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Вводим тестовое содержимое
User.destroy_all
User.create(name: "Иван", email: "ivan@mail.ru",  password: "888")
User.create(name: "Катя", email: "katya@mail.ru", password: "888")
User.create(name: "Саша", email: "sasha@mail.ru", password: "888")