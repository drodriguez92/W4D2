# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all


cat1 = Cat.create!(birth_date: '1990/10/23', color: 'Orange', name:'Diego', sex:'M', text:'Eating lasagna')
cat2 = Cat.create!(birth_date: '2000/6/10', color: 'Black', name:'Aaron', sex:'F', text:'Being a damn cat')
cat3 = Cat.create!(birth_date: '2010/08/23', color: 'White', name:'The Dog', sex:'M', text:'Chasing dogs')
cat4 = Cat.create!(birth_date: '2005/3/15', color: 'Green', name:'Alphabet', sex:'F', text:'Scratching People')
