# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
Answer.destroy_all

q1 = Question.create(title:"Testing", body: "thiiiiiiiings")

q2 = Question.create(title:"Testing2", body: "thiiiiiiiings2")

q3 = Question.create(title:"Testing3", body: "thiiiiiiiings3")


a1 = Answer.create(title:"stuff", body:"other stuff")

a2 = Answer.create(title:"stuff2", body:"other stuff2")

a3 = Answer.create(title:"stuff3", body:"other stuff3")
