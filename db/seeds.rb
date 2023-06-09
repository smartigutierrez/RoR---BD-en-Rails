# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
    Movie.create(
      name: Faker::Movie.title,
      synopsis: Faker::Lorem.paragraphs,
      director: Faker::Name.name_with_middle
    )

    Serie.create(
        name: Faker::FunnyName.two_word_name,
        synopsis: Faker::Lorem.paragraphs,
        director: Faker::Name.name_with_middle
    )

    Documentary.create(
      name: Faker::FunnyName.three_word_name,
      synopsis: Faker::Lorem.paragraphs,
      director: Faker::Name.name_with_middle
    )
end