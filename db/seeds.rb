# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '>>>>>>>>>>>>>>Vamos chicos<<<<<<<<<<<<<<<<<<<<<'

print '>>>>>>>>>>>>>>cleaning the db<<<<<<<<<<<<<<<<<<<<<'
  Vegetable.destroy_all
puts 'ok'

print '>>>>>>>>>>>>>>create vegetables<<<<<<<<<<<<<<<<<<<<<'

  tomato = Vegetable.create!(
    specie: "tomato",
    seeding_start: Date.parse("01-02-2020"),
    seeding_end: Date.parse("01-05-2020"),
    seed_description: "Sow seed in late March to early April for outdoor crops, and in mid-February for growing in an unheated glasshouse. Seed can be expensive, but usually only a few plants are needed, and germination is usually good.
      - Fill 9cm (3½in) pot with seed or multipurpose compost
      - Level and firm the compost, then water
      - Sow seeds on the compost surface, spacing them evenly, about a finger-width apart, to prevent damping off disease
      - Cover the seed with a layer of vermiculite
      - Keep at approximately 21°C (70°F), ideally in a heated propagator, until seedlings emerge
      - Transfer seedlings to a heated greenhouse or, although less good, a sunny windowsill
      Seedlings emerge after about five days. Place them in the best-possible light (such as a greenhouse) and at a temperature of around 18°C (65°F) to prevent seedlings becoming long, thin and ‘leggy’. Leggy plants produce their first flowers high up on the plant leading to a bare, unproductive lower stem.
      Growing on:
      Ideally, grow on in a glasshouse (or failing this, a well-lit windowsill), spacing plants so that their leaves never touch to avoid legginess. About a month after pricking out, the plants will be ready for planting into their final positions – this is indicated by the first flowers showing their yellow colour. The stress of being grown in the confines of a pot promotes flowers earlier than in less stressful positions, such as growing in the ground.",
    planting_start: Date.parse("01-05-2020"),
    planting_end: Date.parse("01-07-2020"),
    plant_description:"Plant outside in early summer. In unheated greenhouses, planting can take place in mid-spring. Set plants 40cm (16in) apart and water in well.
      When planting into open ground, create a shallow circular reservoir around the plant to help retain water.",
    harvest_start: Date.parse("01-07-2020"),
    harvest_end: Date.parse("01-10-2020"),
    harvest_description: "Pick fruits as required, with the calyx (stalk) still attached. When cropping slows in early autumn, green fruits can be gathered and kept in a warm, dark place to ripen.",
    area: 40,
    description: 'Growing your own tomatoes is simple and just a couple of plants will reward you with plenty of delicious tomatoes in the summer. There are all sizes of tomatoes to try, from the tiniest cherry types, favourites with children, through to full-flavoured giant beefsteak tomatoes.'


    )
  tomato.save!

carrot = Vegetable.create!(
    specie: "carrot",
    seeding_start: Date.parse("01-02-2020"),
    seeding_end: Date.parse("01-08-2020"),
    seed_description:"Carrots require an open, sunny site and fertile well-drained soil. If your soil is stony, shallow or heavy clay, you may end up with stunted or forked carrots, so try short-rooted types. These also suit containers.
      Early cultivars can be sown in February or March under cloches or with similar protection. The main outdoor sowing season is from April to early July.  Seed packets will state whether the cultivar is an early or maincrop type.
      Sow 1cm (½in) deep in rows 15cm-30cm (6-12in) apart. By sowing thinly you can avoid thinning out. Aim for plants 5-7.5cm (2-3in) apart. Thin if needed at the seedling stage.",
    planting_start: "",
    planting_end: "",
    plant_description: "",
    harvest_start: Date.parse("03-05-2020"),
    harvest_end: Date.parse("03-11-2020"),
    harvest_description: "Carrots are ready for harvesting about 12-16 weeks after sowing. Pick as soon as they are large enough to use; don't aim for the largest roots or you'll sacrifice flavour. Lift carefully using a fork if the soil is heavy.",
    area: 30,
    description: "Carrots come in shapes and colours other than long and orange – look out for round carrots, as well as unusual colours such as red, yellow and even purple.
They can be grown in containers if you are short on space, or your soil is stony or heavy clay. Sow regularly for prolonged cropping.They freeze and store well too, but like most vegetables, taste best freshly picked from the garden."

    )
carrot.save!

# egg_plant = Vegetable.create!(
#     specie: "egg_plant",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# aspergus = Vegetable.create!(
#     specie: "aspergus",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# potato = Vegetable.create!(
#     specie: "potato",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# radish = Vegetable.create!(
#     specie: "radish",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# pepper = Vegetable.create!(
#     specie: "pepper",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# onion = Vegetable.create!(
#     specie: "onion",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# cauliflower = Vegetable.create!(
#     specie: "cauliflower",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# broad_beans = Vegetable.create!(
#     specie: "broad_beans",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# courgette = Vegetable.create!(
#     specie: "courgette",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

# calabrese = Vegetable.create!(
#     specie: "calabrese",
#     seeding_start:
#     seeding_end:
#     seed_description:
#     planting_start:
#     planting_end:
#     plant_description:
#     harvest_start:
#     harvest_end:
#     harvest_description:
#     area:
#     description:

#     )

puts 'Finished!'


