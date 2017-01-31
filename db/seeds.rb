# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rake db:drop; rake db:create; rake db:migrate; rake db:seed

User.create name:"divya", email:"divya@g.com", password:"divya", password_confirmation:"divya"
User.create name:"Ann", email:"ann@g.com", password:"ann", password_confirmation:"ann"

Category.create name:"Artwork & Decor"
Category.create name:"Bath"
Category.create name:"Lighting & Fans"
Category.create name:"Bedding"
Category.create name:"Appliances"
Category.create name:"Pet Supplies"
Category.create name:"Kitchen Tools & Utensils"
Category.create name:"Health & Personal Care"
Category.create name:"Cookware & Bakeware"
Category.create name:"Dining & Entertainment"
Category.create name:"Food & Gift Baskets"
Category.create name:"Furniture"
Category.create name:"Heating, Cooling & Air Quality"
Category.create name:"Vacuums & Floor Care"
