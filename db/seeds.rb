puts "Seeding DB data"
30.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address
    )
end
10.times do
    Pizza.create(
        name: Faker::Food.dish,
        ingredients: Faker::Food.ingredient
    )
end
10.times do
    RestaurantPizza.create(
        restaurant_id: rand(1..30),
        pizza_id: rand(1..10),
        price: rand(10..30)
    )
end
puts "Done!"