# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'





10.times do
    cities=City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Code.sin )
end

10.times do
     user = User.create!(first_name: Faker::FunnyName.name, last_name: Faker::Ancient.primordial, description: Faker::Marketing.buzzwords, email: Faker::Internet.email, age: Faker::Number.between(from: 16, to: 100),  city: City.all.sample)
end


20.times do
    Gossip.create( title: Faker::Hipster.sentence, content: Faker::Quote.famous_last_words, user: User.all.sample )
end


10.times do
    Tag.create(
    title: ["Animals", "Art", "Jokes", "NotsoCool" , "Cheerup", "Motivation Nation", "Gourmet" , "Ruby", "Help", "HObbies" ].sample
    )
end

10.times do
    GossipTag.create(
        gossip: Gossip.all.sample ,
        tag: Tag.all.sample
    )
end
