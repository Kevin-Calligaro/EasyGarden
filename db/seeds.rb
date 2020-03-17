# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '>>>>>>>>>>>>>>Vamos chicos<<<<<<<<<<<<<<<<<<<<<'

print '>>>>>>>>>>>>>>cleaning the db<<<<<<<<<<<<<<<<<<<<<'

Garden.destroy_all
User.destroy_all
Relationship.destroy_all
Vegetable.destroy_all
GardenVegetable.destroy_all
Task.destroy_all

puts 'ok'

print '>>>>>>>>>>>>>>create vegetables<<<<<<<<<<<<<<<<<<<<<'

  tomato = Vegetable.create!(
    specie: "tomato",
    seeding_start: Date.parse("01-02-2020"),
    seeding_end: Date.parse("01-05-2020"),
    sedding_desription: "Sow seed in late March to early April for outdoor crops, and in mid-February for growing in an unheated glasshouse. Seed can be expensive, but usually only a few plants are needed, and germination is usually good.
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
    planting_description:"Plant outside in early summer. In unheated greenhouses, planting can take place in mid-spring. Set plants 40cm (16in) apart and water in well.
      When planting into open ground, create a shallow circular reservoir around the plant to help retain water.",
    harvesting_start: Date.parse("01-07-2020"),
    harvesting_end: Date.parse("01-10-2020"),
    harvesting_description: "Pick fruits as required, with the calyx (stalk) still attached. When cropping slows in early autumn, green fruits can be gathered and kept in a warm, dark place to ripen.",
    area: 40,
    description: 'Growing your own tomatoes is simple and just a couple of plants will reward you with plenty of delicious tomatoes in the summer. There are all sizes of tomatoes to try, from the tiniest cherry types, favourites with children, through to full-flavoured giant beefsteak tomatoes.',
    photo_vegetable: "tomatoes_photo.png",
    icon_vegetable: "tomato.png"
    )

carrot = Vegetable.create!(
    specie: "carrot",
    seeding_start: Date.parse("01-02-2020"),
    seeding_end: Date.parse("01-08-2020"),
    sedding_desription:"Carrots require an open, sunny site and fertile well-drained soil. If your soil is stony, shallow or heavy clay, you may end up with stunted or forked carrots, so try short-rooted types. These also suit containers.
      Early cultivars can be sown in February or March under cloches or with similar protection. The main outdoor sowing season is from April to early July.  Seed packets will state whether the cultivar is an early or maincrop type.
      Sow 1cm (½in) deep in rows 15cm-30cm (6-12in) apart. By sowing thinly you can avoid thinning out. Aim for plants 5-7.5cm (2-3in) apart. Thin if needed at the seedling stage.",
    planting_start: nil,
    planting_end: nil,
    planting_description: nil,
    harvesting_start: Date.parse("01-05-2020"),
    harvesting_end: Date.parse("01-11-2020"),
    harvesting_description: "Carrots are ready for harvesting about 12-16 weeks after sowing. Pick as soon as they are large enough to use; don't aim for the largest roots or you'll sacrifice flavour. Lift carefully using a fork if the soil is heavy.",
    area: 30,
    description: "Carrots come in shapes and colours other than long and orange – look out for round carrots, as well as unusual colours such as red, yellow and even purple. They can be grown in containers if you are short on space, or your soil is stony or heavy clay. Sow regularly for prolonged cropping.They freeze and store well too, but like most vegetables, taste best freshly picked from the garden.",
    photo_vegetable: "carrot_photo.png",
    icon_vegetable: "carrot.png"
    )

egg_plant = Vegetable.create!(
    specie: "egg-plant",
    seeding_start: Date.parse("01-02-2020"),
    seeding_end:Date.parse("01-05-2020"),
    sedding_desription: "Eggplant seeds are sown from February to April-May, in pots, boxes or even on honeycomb trays, warm (18/20 ° C). As soon as the plants have developed two to four leaves, they can be repotted in individual pots. They then continue their growth in a greenhouse or veranda well exposed until planting.",
    planting_start: Date.parse("01-04-2020"),
    planting_end: Date.parse("30-06-2020"),
    planting_description: "you can plant your eggplant outdoors. If possible, place them in a greenhouse or tunnel at least the first heat of summer. Otherwise they have to vegetate if the heat is not there. On lines spaced 60cm apart, plant an eggplant every 60cm. Bed plants have seen the first leaves. Water copiously and place a mulch to grab attention and hinder the growth of weeds.",
    harvesting_start: Date.parse("01-05-2020"),
    harvesting_end: Date.parse("30-09-2020"),
    harvesting_description: "The fruits are harvested well developed, from fifteen centimeters for long varieties. About ten centimeters for the rounds. Eggplant does not keep very long. The most effective method of preservation is to freeze ready-made meals. You can also dry it.",
    area: 60,
    description:"Eggplant is a heat-loving plant. Not very productive except in the south, it is most often grown in a greenhouse. On the other hand, the feet grafted on tomatoes are much better suited to temperate climates. They are more resilient and productive.",
    photo_vegetable: "egg_plant_photo.png",
    icon_vegetable: "egg_plant.png"
    )

potato = Vegetable.create!(
    specie: "potato",
    seeding_start: nil,
    seeding_end: nil,
    sedding_desription: nil,
    planting_start: Date.parse('15-03-2020') ,
    planting_end: Date.parse('07-04-2020'),
    planting_description: " The soil needs soil 10 ° deep to grow. Exposure: The potato needs sun to develop well. Turn the earth upside down for about 30 cm, it must be well loosened for planting. Wait until the tubers have sprouted before planting them. Dig furrows about 15 cm deep. Position the tuber vertically, ensuring that the seed is pointing upwards. Maintain a distance of approximately 30 to 40 cm between each tuber. If you have several furrows, keep a distance of 60 to 70 cm between each furrow.",
    harvesting_start: Date.parse('15-06-2020'),
    harvesting_end: Date.parse('15-09-2020'),
    harvesting_description: " It is unnecessary to harvest the potatoes before the foliage is completely yellowed. This essential stage of yellowing indicates that the harvest is imminent." ,
    area:  30,
    description: "Relatively easy to cultivate and maintain, the potato requires some care and gestures that will allow you to improve the yield and the harvest. Mounding of potatoes: When the plant reaches about 10-15 cm in height, mound the foot with light soil. This operation which consists of forming a small mound at the foot of the stems aims to keep the plant in the ground, protect it from the wind and allow it to develop at best. Watering the potatoes: Potatoes are especially worried about prolonged dryness and lack of water. Evening watering is recommended when it's hot and you see the foliage wilting. Do not wet the leaves to avoid the appearance of diseases such as fungi. In order to avoid any risk of drought in the soil, it is advisable to put a mulch at the base of the potato plants." ,
    photo_vegetable: "potatos_photo.png",
    icon_vegetable: "potato.png"
    )

radish = Vegetable.create!(
    specie: "spring radish ",
    seeding_start: Date.parse('01-02-2020'),
    seeding_end: Date.parse('30-06-2020'),
    sedding_desription: "The radish germinates when the soil temperature reaches 8 ° C, but its growth is really active from 12 ° C. At room temperature, the ideal is between 15 and 18 ° C. Depending on the region, the best harvests are therefore obtained with seedlings spreading between February 15 and April 20. However, the first sowing of February and March is carried out under a forcing veil or a Nantes caterpillar. Remove these protections in the event of high heat (above 25 ° C) and at the start of tuberization. All radish sowing is done in rows 20 cm apart, up to 35 cm for very large roots. For round varieties, sow 20 seeds per meter at a depth of 1 cm; and for half-lengths, place 30 seeds per meter at 2 cm deep. Cover the seeds with 2 cm of fine soil (0.5 cm only for the round varieties of radishes of every month). Keep the soil cool until emergence (3 to 5 days).",
    planting_start: nil,
    planting_end: nil,
    planting_description: nil,
    harvesting_start: Date.parse('01-03-2020'),
    harvesting_end: Date.parse('30-07-2020'),
    harvesting_description: "Pick up the spring radishes 3 or 4 weeks after sowing, as needed. Do not wait until they are too big and hollow.",
    area: 20,
    description: "Except in the summer when it tolerates light shade, the radish likes bright and sunny situations. This fast-growing crop requires well-worked soil and sparse but regular watering.",
    photo_vegetable: "radish_photo.png",
    icon_vegetable: "radish.png"
    )

pepper = Vegetable.create!(
    specie: "pepper",
    seeding_start: Date.parse('01-03-2020'),
    seeding_end: Date.parse('30-05-2020'),
    sedding_desription: "The cultivation of peppers is very similar to that of tomatoes. But sowing is rather tricky to succeed: it actually needs a temperature of around 28 ° C to germinate. And as its development is rather slow, it must be sown in March to consider transplanting to the vegetable garden in late May / early June. In other words: sowing is only open to well-equipped gardeners (mini-greenhouse or heating mats for example) ... and the energy required makes the operation not very ecological.",
    planting_start: Date.parse('30-05-2020'),
    planting_end: Date.parse('10-06-2020'),
    planting_description: "Planting takes place towards the end of May, when the soil is well warmed (around 15 ° C). The plants will be spaced a good 50 cm apart. If you live north of the Loire, use a black plastic film, a removable tunnel",
    harvesting_start: Date.parse('30-07-2020'),
    harvesting_end: Date.parse('30-09-2020'),
    harvesting_description: "Fruits form around the end of June. The first pepper harvest (green) is done a month later, around the end of July, depending on the climate. If you wait, the fruit will take on color. Harvest the last before the first frosts.",
    area: 50,
    description: "The bell pepper (Capsicum annuum) likes the sun: only grow it if you can give it a sunny location. In the vegetable patch, it forms a foot about 1m high, with beautiful glazed foliage. It bears small white flowers, which later give very colorful fruits which ripen from green to yellow or red.",
    photo_vegetable: "pepper_photo.png",
    icon_vegetable: "pepper.png"
    )

onion = Vegetable.create!(
    specie: "onion",
    seeding_start: Date.parse('01-02-2020'),
    seeding_end: Date.parse('30-03-2020'),
    sedding_desription: "Onions intended for winter storage should not be sown in autumn but in spring. Otherwise they will go to seed the following year and the bulbs will harden and hollow out.",
    planting_start: Date.parse('01-03-2020'),
    planting_end: Date.parse('30-04-2020'),
    planting_description: "In spring you plant onions to keep or sweet onions to harvest later than those in autumn. Sowing takes place in February under shelters. The bulbs are planted in March or April. They are harvested as soon as the bulbs are big enough (June in general). Those to be preserved are harvested in summer, when the foliage is almost dry.",
    harvesting_start: Date.parse('01-06-2020'),
    harvesting_end: Date.parse('01-08-2020'),
    harvesting_description: "Those to keep are harvested in August. You have to wait until the foliage is two-thirds yellowed, then tear off all the bulbs. If it does not rain, dry them in the sun for a few days. Then cut the leaves and roots and store them in crates.",
    area: 10,
    description: "Onions are strong and do not require much care. It is one of the rare vegetables not to like being watered. If you let them grow a second year, they will produce a large ball of white flowers, highly prized by insects",
    photo_vegetable: "onion_photo.png",
    icon_vegetable: "onion.png"
    )

cauliflower = Vegetable.create!(
    specie: "cauliflower",
    seeding_start: Date.parse('01-03-2020'),
    seeding_end: Date.parse('30-04-2020'),
    sedding_desription: " Cauliflower cultivation is much slower since it takes almost 7 months between sowing and harvesting. Sow in March / April under cover for a fall harvest. We can also start sowing in February, warm. Sow in May to July directly in the ground for a winter harvest if the cabbages are protected from November",
    planting_start: Date.parse('01-05-2020'),
    planting_end: Date.parse('01-06-2020'),
    planting_description: "The ideal planting period is just after the last frosts, around mid-May, until September for a harvest in November. Plant cauliflowers in good garden soil, ideally enriched with nitrogen fertilization. Space each plant 60 to 80 cm in all directions",
    harvesting_start: Date.parse('01-11-2020'),
    harvesting_end: Date.parse('15-11-2020'),
    harvesting_description: "The cauliflower is harvested practically throughout the year depending on the sowing periods. The harvest takes place about 3 months after planting but this can vary depending on weather conditions. Wait until the head is firmly closed and tear off or cut away the soil because there will be no other crop on this plane. Protect your cauliflowers from November for a winter harvest",
    area: 70,
    description: "As soon as the plants have at least 3 to 4 leaves, transplant directly into place while protecting your crop if this operation must be carried out before May. Transplanting is done every 40 cm. This spacing is necessary to allow the plants room to develop. Transplant to well-plowed soil.",
    photo_vegetable: "cauliflower_photo.png",
    icon_vegetable: "cauliflower.png"
    )

peas = Vegetable.create!(
    specie: "peas",
    seeding_start:  Date.parse('01-02-2020'),
    seeding_end:  Date.parse('30-05-2020'),
    sedding_desription: "Peas are not grown from seedlings because they do not transplant well. You’ll be planting them out right into the garden as soon as the ground thaws enough to dig. This can be up to 4 to 6 weeks before the last frost, and it won’t harm the plants at all.
      Because you are going to be sowing your seeds into fairly cold ground, its a good idea to get seed that has been pre-treated with a fungicide to prevent rot. If you prefer to use untreated seed, you should plant more than you need to account for the ones that won’t sprout.
      Another thing to consider when it comes to seed is inoculant. It’s not necessary, but it can help your plants thrive by aiding their extraction of nitrogen from the soil. It’s a powder that can be purchased at most garden stores. Just add the powder into the soil when you plant your seeds. Bonemeal is another good addition to the soil for peas.
      How you space your pea seed will depend on whether you are growing bush peas or not. Vining peas are usually sown in a row without much regard to the specific spacing. Bush peas can be grown close together, about 10 to 12 inches apart. The plants don’t mind being crowded. Your seeds should be in about an inch deep.
      Peas don’t grow well in the hot summer months, but you can usually get a second harvest if you plant again once the hottest part of the season is passed.",
    planting_start: nil,
    planting_end:  nil,
    planting_description: nil,
    harvesting_start:  Date.parse('01-05-2020'),
    harvesting_end:  Date.parse('30-07-2020'),
    harvesting_description: "Your peas are ready to harvest when they have gotten plump and the pods are well filled-out. When you pick the pods, use one hand to grasp the vine near the pod and pull the pod with the other. The plants are delicate and just yanking on the pods will likely damage the entire plant.
      If any pods are missed, the peas will grow large and begin to harden. These can be used in soups or just discarded. You should still remove them from the plant because overripe peas will cause the plant to stop producing more flowers and pods.
      Expected yield can vary quite a bit between dwarf, bush or vine varieties. Green peas that you have to shell out of the pods do not produce a large harvest per plant, so you can expect maybe a half pound of peas per plant.
      Fresh peas can be stored in their pods in the refrigerator until you are ready to use them. They freeze well after a quick blanche in boiling water, and drying peas is still a popular way to store them as well.",
    area: 40,
    description: "Terminology for peas can be a bit confusing, considering there are some varieties where you eat the pods and some you don’t. In this case, “green peas” is referring to the traditional garden pea that you shell out of the pods.
      Peas hold a special place in most gardeners’ hearts because they are usually the very first plant to produce a harvest, providing those first fresh vegetables after a long winter. They are often the first thing to go into the garden, and are a great kick-off to the season.
      Like many garden plants, you can get varieties of peas that grow in long vines, or in more compact bushes. Dwarf varieties are ideal for small garden spaces. Some vining peas have beautiful flowers and can be grown for their looks as well as their fruits.
      Peas that are shelled can be eaten raw, right out of the pod but are usually cooked for use in meals. Green peas are high in vitamin K, C, B1 and folate. For a vegetable, they are fairly high in protein too." ,
    photo_vegetable: "beans_photo.png",
    icon_vegetable: "beans.png"
    )

zucchini = Vegetable.create!(
    specie: "zucchini",
    seeding_start: Date.parse('01-04-2020'),
    seeding_end: Date.parse('30-05-2020'),
    sedding_desription: "Zucchini plants can be started from seed either indoors, or directly in the garden. You should start your zucchini seedlings indoors about 2 weeks before your last frost date. Zucchini grow very long roots, so start your seeds in small pots that are several inches deep and be very careful not to break the roots when you transplant. The seeds should be planted about 1 inch below the surface of your potting soil.
      Because you can get 16 or more fruits per vine, you really don’t need that many plants. Three or four is usually enough for a family. If you get too over-zealous, you will almost certainly be overrun with zucchini at harvest time.
      Alternatively, you can sow the seeds directly outdoors after the threat of frost is past and the soil has warmed up. See the transplanting section for more on planting right into the garden.",
    planting_start: Date.parse('01-05-2020'),
    planting_end:  Date.parse('01-06-2020'),
    planting_description: "You should plant your zucchini in the sunniest part of the garden, and they love the heat.
      If you are planting your seeds directly into the garden, plant the seeds about 1 inch deep, with about 6 seeds to a small hill. If they all sprout, thin down to about 3 plants per hill.
      With seedlings, you have to prepare your garden area by digging the soil thoroughly so that it’s loose. To protect the roots, you should loosen the soil at least 6 inches deep. If you are using larger seedlings, you may want to dig deeper. Mix in compost or aged manure, for these heavy-feeding plants.
      As mentioned, zucchinis have long tap roots, so you need to be careful when you transplant that you don’t break the roots. Dig a hole deep enough that you can set in the seedling without having to fold up the longer roots.
      If you are planting more than one hill of zucchini, you should allow plenty of space between them. Bush plants need at least 3 feet on all sides because they will get quite large. Vining zucchini that are being grown upward on a trellis can be about a foot and a half apart.",
    harvesting_start:  Date.parse('01-06-2020'),
    harvesting_end:  Date.parse('30-10-2020'),
    harvesting_description: "And while it might be tempting to let your zucchini grow really large, the best flavor comes with the smaller fruit. Large ones start to get woody, and the seeds are getting hard inside as well. Pick them around 6 to 10 inches long. They will grow quite quickly, so plan on checking the vines every couple of days.
      It’s almost inevitable that one or two zucchinis will be missed, and you will discover a huge one growing in a corner somewhere. You can still use it, but it will likely work best grated in a baked recipe (like muffins).
      Handle the fruit carefully once you’ve picked them off the vine. The skin is very thin and it can get scratched or bruised easily. Zucchinis don’t hold their flavor very long after picking. You can store them in the fridge but should use them up within a week.",
    area: 100,
    description: "Like tomatoes, zucchini is another popular favorite with home gardeners. Healthy zucchini vines can produce a huge harvest each year, and many people end up trying to give away their extra zucchini because they have so much of it. It’s often called “summer squash” as well.
      Most zucchini varieties grow as a spreading vine, which can take up a lot of space. You can conserve space by training the vines up a trellis, and there are also some bush varieties. Most zucchini are long and tube-shaped but there are some round varieties too.
      Zucchini is a very flexible vegetable that can be used either raw or cooked. You can even use zucchini in baked goods, like bread or muffins. They are very high in vitamins A and C, manganese and fiber.",
    photo_vegetable: "zucchini_photo.png",
    icon_vegetable: "zucchini.png"
    )

puts 'Finished vegetables!'

print 'Create user'

user1 = User.create!(
  email: 'sarah.lee@gmail.com',
  first_name: 'Sarah',
  last_name: 'Lee',
  password: 'secret'
)

puts 'Finished user!'

print 'create a garden'

garden1 = Garden.create!(
  title: 'My garden',
  width: 5,
  height: 3,
  user: user1
)

puts 'Garden done'


puts 'create relationship...'

relationship1 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: carrot,
  status: "friend"
),

relationship2 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: egg_plant,
  status: "neutral"
),

relationship3 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: potato,
  status: "neutral"
),

relationship4 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: radish,
  status: "neutral"
),

relationship5 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: pepper,
  status: "neutral"
),

relationship6 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: onion,
  status: "friend"
),

relationship7 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: cauliflower,
  status: "friend"
),

relationship8 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: peas,
  status: "enemy"
),

relationship9 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: zucchini,
  status: "neutral"
),

relationship10 = Relationship.create!(
  vegetable1: tomato,
  vegetable2: tomato,
  status: "friends"
),

relationship11 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: carrot,
  status: "friend"
),

relationship12 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: egg_plant,
  status: "neutral"
),

relationship13 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: potato,
  status: "neutral"
),

relationship14 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: radish,
  status: "friend"
),

relationship15 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: pepper,
  status: "friend"
),

relationship16 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: onion,
  status: "friend"
),

relationship17 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: cauliflower,
  status: "neutral"
),

relationship18 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: peas,
  status: "enemy"
),

relationship19 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: zucchini,
  status: "neutral"
),

relationship20 = Relationship.create!(
  vegetable1: carrot,
  vegetable2: tomato,
  status: "friends"
),

relationship21 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: egg_plant,
  status: "friend"
),

relationship22 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: potato,
  status: "neutral"
),

relationship23 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: radish,
  status: "neutral"
),

relationship24 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: pepper,
  status: "neutral"
),

relationship25 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: onion,
  status: "friend"
),

relationship26 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: cauliflower,
  status: "neutral"
),

relationship27 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: peas,
  status: "friend"
),

relationship28 = Relationship.create!(
  vegetable1: egg_plant,
  vegetable2: zucchini,
  status: "neutral"
),

relationship29 = Relationship.create!(
  vegetable1: potato,
  vegetable2: potato,
  status: "friend"
),

relationship30 = Relationship.create!(
  vegetable1: potato,
  vegetable2: radish,
  status: "enemy"
),

relationship31 = Relationship.create!(
  vegetable1: potato,
  vegetable2: pepper,
  status: "neutral"
),

relationship32 = Relationship.create!(
  vegetable1: potato,
  vegetable2: onion,
  status: "neutral"
),

relationship33 = Relationship.create!(
  vegetable1: potato,
  vegetable2: cauliflower,
  status: "neutral"
),

relationship34 = Relationship.create!(
  vegetable1: potato,
  vegetable2: peas,
  status: "friend"
),

relationship35 = Relationship.create!(
  vegetable1: potato,
  vegetable2: zucchini,
  status: "enemy"
),

relationship36 = Relationship.create!(
  vegetable1: radish,
  vegetable2: radish,
  status: "friend"
),

relationship37 = Relationship.create!(
  vegetable1: radish,
  vegetable2: pepper,
  status: "neutral"
),

relationship38 = Relationship.create!(
  vegetable1: radish,
  vegetable2: onion,
  status: "neutral"
),

relationship39 = Relationship.create!(
  vegetable1: radish,
  vegetable2: cauliflower,
  status: "neutral"
),

relationship40 = Relationship.create!(
  vegetable1: radish,
  vegetable2: peas,
  status: "neutral"
),

relationship41 = Relationship.create!(
  vegetable1: radish,
  vegetable2: zucchini,
  status: "neutral"
),

relationship42 = Relationship.create!(
  vegetable1: pepper,
  vegetable2: pepper,
  status: "friend"
),

relationship43 = Relationship.create!(
  vegetable1: pepper,
  vegetable2: onion,
  status: "friend"
),

relationship44 = Relationship.create!(
  vegetable1: pepper,
  vegetable2: cauliflower,
  status: "neutral"
),

relationship45 = Relationship.create!(
  vegetable1: pepper,
  vegetable2: peas,
  status: "neutral"
),

relationship46 = Relationship.create!(
  vegetable1: pepper,
  vegetable2: zucchini,
  status: "neutral"
),

relationship47 = Relationship.create!(
  vegetable1: onion,
  vegetable2: onion,
  status: "friend"
),

relationship48 = Relationship.create!(
  vegetable1: onion,
  vegetable2: cauliflower,
  status: "friend"
),

relationship49 = Relationship.create!(
  vegetable1: onion,
  vegetable2: peas,
  status: "neutral"
),

relationship50 = Relationship.create!(
  vegetable1: onion,
  vegetable2: zucchini,
  status: "neutral"
),

relationship51 = Relationship.create!(
  vegetable1: cauliflower,
  vegetable2: cauliflower,
  status: "friend"
),

relationship52 = Relationship.create!(
  vegetable1: cauliflower,
  vegetable2: peas,
  status: "neutral"
),

relationship53 = Relationship.create!(
  vegetable1: cauliflower,
  vegetable2: zucchini,
  status: "neutral"
),

relationship54 = Relationship.create!(
  vegetable1: peas,
  vegetable2: peas,
  status: "friend"
),

relationship55 = Relationship.create!(
  vegetable1: peas,
  vegetable2: zucchini,
  status: "neutral"
),

relationship56 = Relationship.create!(
  vegetable1: zucchini,
  vegetable2: zucchini,
  status: "friends"
)

puts "done relationship !"

puts "add vegetable on garden"

garden_vegetable_carrot = GardenVegetable.create!(
  vegetable: carrot,
  garden: garden1
)

garden_vegetable_potato = GardenVegetable.create!(
  vegetable: potato,
  garden: garden1
)

garden_vegetable_tomato = GardenVegetable.create!(
  vegetable: tomato,
  garden: garden1
)

garden_vegetable_egg_plant = GardenVegetable.create!(
  vegetable: egg_plant,
  garden: garden1
)

garden_vegetable_zucchini = GardenVegetable.create!(
  vegetable: zucchini,
  garden: garden1
)

garden_vegetable_onion = GardenVegetable.create!(
  vegetable: onion,
  garden: garden1
)

garden_vegetable_radish = GardenVegetable.create!(
  vegetable: radish,
  garden: garden1
)

puts "Les legumes sont dans le jardin, je repète, les legumes sont dans le jardin"

puts "Task for each garden_vegetable..."

Task.create!(
  garden_vegetable: garden_vegetable_carrot,
  step: 1,
  action: "seeding",
  date: nil,
  done: false
)

Task.create!(
  garden_vegetable: garden_vegetable_carrot,
  step: 2,
  action: "harvesting",
  date: nil,
  done: false
)

puts "Done!"

puts "Task for tomato..."

Task.create!(
  garden_vegetable: garden_vegetable_tomato,
  step: 1,
  action: "seeding",
  date: nil,
  done: true
)

Task.create!(
  garden_vegetable: garden_vegetable_tomato,
  step: 2,
  action: "planting",
  date: nil,
  done: false
)

Task.create!(
  garden_vegetable: garden_vegetable_tomato,
  step: 3,
  action: "harvesting",
  date: nil,
  done: false
)

Task.create!(
  garden_vegetable: garden_vegetable_radish,
  step: 1,
  action: "seeding",
  date: nil,
  done: false
)

Task.create!(
  garden_vegetable: garden_vegetable_radish,
  step: 2,
  action: "harvesting",
  date: nil,
  done: false
)


puts "Done!"
