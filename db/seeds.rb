# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

tout = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

tout['drinks'].each do |hash|
  hash.each do |key, value|
    Ingredient.create(name: value)
  end
end
