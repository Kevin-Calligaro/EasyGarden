# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print '>>>>>>>>>>>>>>cleaning the db<<<<<<<<<<<<<<<<<<<<<'
  Vegetable.destroy_all
puts 'ok'

print '>>>>>>>>>>>>>>create vegetables<<<<<<<<<<<<<<<<<<<<<'

  tomato = Vegetable.create!(
    specie: tomato,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description: 'Growing your own tomatoes is simple and just a couple of plants will reward you with plenty of delicious tomatoes in the summer. There are all sizes of tomatoes to try, from the tiniest cherry types, favourites with children, through to full-flavoured giant beefsteak tomatoes.'


    )

carrot = Vegetable.create!(
    specie: carrot,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

egg_plant = Vegetable.create!(
    specie: egg_plant,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

aspergus = Vegetable.create!(
    specie: aspergus,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

potato = Vegetable.create!(
    specie: potato,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

radish = Vegetable.create!(
    specie: radish,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

pepper = Vegetable.create!(
    specie: pepper,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

onion = Vegetable.create!(
    specie: onion,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

cauliflower = Vegetable.create!(
    specie: cauliflower,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

broad_beans = Vegetable.create!(
    specie: broad_beans,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

courgette = Vegetable.create!(
    specie: courgette,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )

calabrese = Vegetable.create!(
    specie: calabrese,
    seeding_start:
    seeding_end:
    description_seed:
    planting_start:
    planting_end:
    description_plant:
    harvesting_start:
    harvesting_end:
    description_harvest:
    area:
    description:

    )




puts 'ok'
puts 'Finished!'

puts 'Cleaning database...'
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(sku: 'original-teddy-bear', name: 'Teddy bear', category: kids, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')

Teddy.create!(sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: geek, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Teddy.create!(sku: 'octocat',   name: 'Octocat -  GitHub',      category: geek, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
