# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sale.all.destroy_all

1000.times do Sale.create(
    blend_name: Faker::Coffee.blend_name, #=> "Summer Solstice"
    origin: Faker::Coffee.origin ,#=> "Antigua, Guatemala"
    variety: Faker::Coffee.variety ,#=> "Pacas"
    notes: Faker::Coffee.notes, #=> "balanced, silky, marzipan, orange-creamsicle, bergamot"
    intensifier: Faker::Coffee.intensifier, #=> "quick"
    amount: rand(1990..5490),
    date_time: Faker::Date.between(from:5.year.ago, to: Date.today)

)

end