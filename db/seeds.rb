require "open-uri"

puts 'destroying existing vegetables...'
Instruction.destroy_all
PatchVegetable.destroy_all
Vegetable.destroy_all
Patch.destroy_all

puts 'Started to create the vegetables'

#creating veggie
tomatoes = Vegetable.create!(
  name: "Tomatoes",
  growing_length: "90",
  vegetable_area:"20",
  sun_score: "5,6",
  planting_season: "Spring")

file1 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623153823/Patched/tomatoes.jpg")
tomatoes.photo.attach(io: file1, filename: 'tomatoes.jpg', content_type: 'image/jpg')
tomatoes.save


  ###creating instruction
tomatoes_instructions = Instruction.create!(
  planting_instructions_step_one: "Use your digging fork to loosen the soil to a depth of 20cm and plant your seedlings (space them 20cm apart). Spread 7cm of compost over the surface and thoroughly mix it into the soil",
  planting_instructions_step_two: "Rake the soil around the seed and press down on it to seal the soil around your seedling",
  planting_instructions_step_three: "Tie the main stem to a tall, sturdy bamboo cane and remove sideshoots that sprout from between a leaf and the main stem",
  planting_instructions_step_four: "When the plants reach the top of the support cane, or have 5 fruits remove the growing point of the main stem at two leaves above the top truss. Water regularly to keep the soil/compost evenly moist",
  harvesting_instructions_step_one: "Tomatoes start to ripen from mid-summer onwards, depending on the variety, weather conditions and fruit size",
  harvesting_instructions_step_two: "Check plants every few days and pick tomatoes individually as soon as they’re ripe and fully coloured",
  harvesting_instructions_step_three: "Store picked tomatoes at room temperature indoors, or in a shady place outside",
  vegetable: tomatoes )

peppers = Vegetable.create!(
  name: "Peppers",
  growing_length: "90",
  vegetable_area: "20",
  sun_score: "5,6",
  planting_season: "Spring")

file2 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161649/Patched/peppers.jpg")
peppers.photo.attach(io: file2, filename: 'peppers.jpg', content_type: 'image/jpg')
peppers.save

peppers_instructions = Instruction.create!(
  planting_instructions_step_one: "Move young plants into your patch in late May if in an unheated greenhouse, or late May",
  planting_instructions_step_two: "Pinch out the growing tips when plants are about 20cm tall, to encourage branching, which should lead to more fruit",
  planting_instructions_step_three: "You may need to stake plants if they produce a heavy crop of large peppers",
  planting_instructions_step_four: "Water regularly",
  harvesting_instructions_step_one: "Sweet peppers can be harvested from mid-summer onwards, and fruiting may continue well into autumn in a greenhouse",
  harvesting_instructions_step_two: "Pick as required when the fruits are swollen and glossy",
  harvesting_instructions_step_three: "Harvest at whichever colour and stage of maturity you prefer",
  vegetable: peppers )

cucumbers = Vegetable.create!(
  name: "Cucumbers",
  growing_length: "70",
  vegetable_area: "20",
  sun_score: "5,6",
  planting_season: "Summer")

file3 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623159708/Patched/cucumber.jpg")
cucumbers.photo.attach(io: file3, filename: 'cucumbers.jpg', content_type: 'image/jpg')
cucumbers.save

cucumbers_instructions = Instruction.create!(
  planting_instructions_step_one: "Choose a warm, sheltered, sunny spot with fertile soil. Prepare the ground by digging in up to two bucketfuls of well-rotted organic matter",
  planting_instructions_step_two: "When plants have developed seven leaves, pinch out the growing tip",
  planting_instructions_step_three: "Pinch out the tips of flowerless sideshoots after seven leaves",
  planting_instructions_step_four: "Keep the soil constantly moist by watering around the plant, not over it",
  harvesting_instructions_step_one: "Cucumbers ripen from mid-summer to mid-autumn in a greenhouse, with a shorter season outdoors depending on the weather",
  harvesting_instructions_step_two: "Full grown cucumbers can vary from 10 to 20 cm, depending on the species. And are ready to harvest when uniformly green and firm",
  harvesting_instructions_step_three: "Fruits can grow rapidly, so check them regularly to get them at their best. If they turn yellowish, bulbous or soft, they may be over ripe",
  harvesting_instructions_step_four: "Cut the stem cleanly with a sharp knife. Regular harvesting encourages further fruiting",
  vegetable: cucumbers )

peas = Vegetable.create!(
  name: "Peas",
  growing_length: "70",
  vegetable_area: "20",
  sun_score: "5,6",
  planting_season: "Summer")

file4 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623159788/Patched/Peas.jpg")
peas.photo.attach(io: file4, filename: 'peas.jpg', content_type: 'image/jpg')
peas.save

peas_instructions = Instruction.create!(
  planting_instructions_step_one: "Water the plants when they start to flower and two weeks after add a thick mulch around the base of the plants to help prevent the soil from drying out",
  planting_instructions_step_two: "Most peas need supports to scramble up. For taller varieties, bamboo canes and netting are ideal, while smaller varieties can be supported with pea netting or pea sticks (twiggy branches)",
  planting_instructions_step_three: "After flowering, plants need sufficient water for the pods to swell. Check the soil moisture at root level regularly and water if necessary",
  harvesting_instructions_step_one: "By choosing different types and cultivars, you can harvest from June through to October",
  harvesting_instructions_step_two: "Pods are ready to harvest when they’re well filled. Pick regularly, otherwise the plants will stop producing flowers and pods",
  vegetable: peas )

chilli_peppers = Vegetable.create!(
  name: "Chilli Peppers",
  growing_length: "150",
  vegetable_area: "20",
  sun_score: "5,6",
  planting_season: "Spring")

file5 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623153239/Patched/chilli_peppers.jpg")
chilli_peppers.photo.attach(io: file5, filename: 'chilli_peppers.jpg', content_type: 'image/jpg')
chilli_peppers.save

chilli_peppers_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant your seedlings in your patch and when they reach about 20cm tall, or if they start to lean, stake with a thin cane",
  planting_instructions_step_two: "Pinch out the shoot tips when plants are about 30cm tall to encourage lots of branches, which should give you more fruit",
  planting_instructions_step_three: "Give them a warm, sheltered, sunny spot, and cover initially with fleece or cloches",
  planting_instructions_step_four: "Water regularly, especially in hot weather",
  harvesting_instructions_step_one: "Chilli peppers are generally ready for harvesting from mid-summer, and will continue fruiting well into autumn if grown in a greenhouse",
  harvesting_instructions_step_two: "Picking regularly, using a sharp knife, encourages plants to produce more fruit",
  harvesting_instructions_step_three: "Leaving chillies to ripen fully (usually to red) will suppress further fruit production",
  vegetable: chilli_peppers )

zucchinis = Vegetable.create!(
  name: "Zucchinis",
  growing_length: "60",
  vegetable_area: "20",
  sun_score: "5,6",
  planting_season: "Spring")

file6 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160461/Patched/zucchinis.jpg")
zucchinis.photo.attach(io: file6, filename: 'zucchinis.jpg', content_type: 'image/jpg')
zucchinis.save

zucchinis_instructions = Instruction.create!(
  planting_instructions_step_one: "Make a hole about a spade’s depth and width",
  planting_instructions_step_two: "Fill the hole with a mixture of home-made compost and then plant one courgette in the centre",
  planting_instructions_step_three: "Courgettes are thirsty plants and need regular and generous watering as they grow. When you water, try not to splash the leaves",
  harvesting_instructions_step_one: "Courgette plants usually fruit for many months, from early summer onwards, sometimes right through to the first frost",
  harvesting_instructions_step_two: "Pick the courgettes when they’re young and tasty, 10–12.5cm long",
  harvesting_instructions_step_three: "Regular harvesting, when the fruits are small, will encourage more to form",
  harvesting_instructions_step_four: "The flowers can also be harvested, and have a mild courgette flavour. They can be eaten raw in salads or stuffed and fried. Use straight away, as they don’t keep for long",
  vegetable: zucchinis )

beetroots = Vegetable.create!(
  name: "Beetroots",
  growing_length: "65",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Summer")

file7 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160896/Patched/beetroots.jpg")
beetroots.photo.attach(io: file7, filename: 'beetroots.jpg', content_type: 'image/jpg')
beetroots.save

beetroots_instructions = Instruction.create!(
  planting_instructions_step_one: "When the seedlings are about 2.5cm high, thin out to leave one every 20cm",
  planting_instructions_step_two: "Beetroot grows best in fertile, well-drained soil",
  planting_instructions_step_three: "During dry spells, water every 10–14 days",
  harvesting_instructions_step_one: "Beetroot can be harvested from early summer through to mid-autumn, depending on sowing time and variety",
  harvesting_instructions_step_two: "Pull up alternate plants once the roots are golf ball size, leaving the rest to reach maturity if you wish. Harvest these when no larger than a cricket ball",
  vegetable: beetroots)

brussel_sprouts = Vegetable.create!(
  name: "Brussel Sprouts",
  growing_length: "100",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Spring")

file8 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623154080/Patched/brussel_sprouts.jpg")
brussel_sprouts.photo.attach(io: file8, filename: 'brussel_sprouts.jpg', content_type: 'image/jpg')
brussel_sprouts.save

brussel_sprouts_instructions = Instruction.create!(
  planting_instructions_step_one: "From mid-May to early June transplant them to your patch: choose a sunny site, sheltered from strong winds and water the plants well before moving them, and again afterwards",
  planting_instructions_step_two: "Water the plants regularly until they have settled in. Then water in dry weather, repeating every 10–14 days",
  planting_instructions_step_three: "In September, mound soil around the base of the stems, to provide extra support",
  harvesting_instructions_step_one: "Early varieties can be harvested from August. With later cultivars, the flavour is improved once the sprouts have been frosted",
  harvesting_instructions_step_two: "Start picking the lowest sprouts first, when they are the size of a walnut, firm and still tightly closed. Snap them off with a sharp downward tug",
  harvesting_instructions_step_three: "At the end of the season, the sprout tops can be harvested too",
  vegetable: brussel_sprouts)

cabbages = Vegetable.create!(
  name: "Cabbages",
  growing_length: "100",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Winter")

file9 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160872/Patched/cabbages.jpg")
cabbages.photo.attach(io: file9, filename: 'cabbages.jpg', content_type: 'image/jpg')
cabbages.save

cabbages_instructions = Instruction.create!(
  planting_instructions_step_one: "Water your seedlings well the day before planting",
  planting_instructions_step_two: "Plant 20cm apart. Set the plants in their new hole so the lowest leaves are at ground level and 'puddle’ in the plants with plenty of water – this means filling the hole with water several times before adding soil",
  planting_instructions_step_three: "Water plants in prolonged dry spells – a thorough soak every 10 days should be enough. When the heads begin to form, generous watering will greatly improve size",
  harvesting_instructions_step_one: "Sowings of spring, summer and winter varieties can provide cabbages throughout the year",
  harvesting_instructions_step_two: "Harvest them once they have reached the size you want, and formed a firm head. Cut through the stem just above ground level with a sharp knife",
  harvesting_instructions_step_three: "If you cut a 1cm (½in) deep cross in the stump of spring and summer cabbages after harvesting, they should go on to produce a second (much smaller) cabbage",
  vegetable: cabbages)

carrots = Vegetable.create!(
  name: "Carrots",
  growing_length: "80",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Summer")

file10 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623153241/Patched/carrots.jpg")
carrots.photo.attach(io: file10, filename: 'carrots.jpg', content_type: 'image/jpg')
carrots.save

carrots_instructions = Instruction.create!(
  planting_instructions_step_one: "Carrots are drought resistant so rarely need watering. However, in long dry spells they will benefit from a soaking",
  planting_instructions_step_two: "Cover crops with fleece tunnels or put up barriers around them to prevent carrot flies laying their eggs",
  harvesting_instructions_step_one: "Harvest your carrots as soon as they’re large enough to use – don’t aim for the largest roots or you’ll sacrifice flavour",
  harvesting_instructions_step_two: "Lift the roots carefully using a fork if your soil is heavy",
  vegetable: carrots)

cauliflowers = Vegetable.create!(
  name: "Cauliflowers",
  growing_length: "100",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Winter")

file11 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160931/Patched/cauliflowers.jpg")
cauliflowers.photo.attach(io: file11, filename: 'cauliflowers.jpg', content_type: 'image/jpg')
cauliflowers.save

cauliflowers_instructions = Instruction.create!(
  planting_instructions_step_one: "Cauliflowers do best in very fertile soil, so use put organic matter and firm the soil by treading before planting",
  planting_instructions_step_two: "To avoid problems, water plants well the day before transplanting and make a hole deep enough to hold the plant with the lowest leaves at ground level",
  planting_instructions_step_three: "Fill this hole repeatedly with water. This will fill the hole with soil and ensure the plant is sitting in a large area of moist soil. Firm the soil very well against the roots",
  planting_instructions_step_four: "Water well in dry weather, watering every 10 days, and apply sufficient water to thoroughly wet the root zone",
  harvesting_instructions_step_one: "You can harvest cauliflowers throughout the year, depending on when you transplant them. Different varieties mature at different sizes",
  harvesting_instructions_step_two: "The head should be firm and compact – once it starts to separate, it's past its best and will taste bitter. White varieties should be harvested before they turn yellow",
  harvesting_instructions_step_three: "Cut the stem with a knife, taking the head and a few of the leaves beneath it",
  vegetable: cauliflowers)

radishes = Vegetable.create!(
  name: "Radishes",
  growing_length: "70",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Winter")

file12 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623153241/Patched/radishes.jpg")
radishes.photo.attach(io: file12, filename: 'radishes.jpg', content_type: 'image/jpg')
radishes.save

radishes_instructions = Instruction.create!(
  planting_instructions_step_one: "Keep the soil moist to ensure rapid growth, for fleshy, tasty roots that don’t split. This can be tricky in hot dry summer weather, so take care to water regularly",
  harvesting_instructions_step_one: "Summer radishes are best harvested young, in as little as four weeks from germination, when the roots are about 2.5cm in diameter. If left to grow too large, they can become woody and inedible",
  harvesting_instructions_step_two: "Winter radishes can be left in the ground and dug up as required, or lifted in November and stored",
  harvesting_instructions_step_three: "Pull as required, and eat fresh, when crunchy and delicious",
  vegetable: radishes)

arugula = Vegetable.create!(
  name: "Arugula",
  growing_length: "40",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Summer")

file13 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160987/Patched/arugula.jpg")
arugula.photo.attach(io: file13, filename: 'arugula.jpg', content_type: 'image/jpg')
arugula.save

arugula_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "Keep the soil moist, watering in dry spells, to ensure consistent growth and prevent plants running to seed (bolting) prematurely. However, take care not to overwater, as this can dilute the taste",
  planting_instructions_step_three: "Weed between the plants regularly",
  planting_instructions_step_four: "It’s best to give rocket some shade in hot weather, to prevent the leaves becoming tough and unpalatable",
  harvesting_instructions_step_one: "You can start harvesting the leaves from about four weeks after sowing. Regular picking keeps growth young, tender and tasty",
  harvesting_instructions_step_two: "Pick a few leaves from each plant along the row. If you take lots of leaves from just one plant, you’ll weaken the growth",
  vegetable: arugula)

kale = Vegetable.create!(
  name: "Kale",
  growing_length: "70",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Summer")

file14 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161010/Patched/kale.jpg")
kale.photo.attach(io: file14, filename: 'kale.jpg', content_type: 'image/jpg')
kale.save

kale_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "'Puddle' in the plants with plenty of water",
  planting_instructions_step_three: "Water well in dry weather",
  planting_instructions_step_four: "A spring feed will improve results",
  harvesting_instructions_step_one: "Harvest young leaves from the top of the plant",
  harvesting_instructions_step_two: "Pick shoots that are 10–15cm long and still young",
  vegetable: kale)

leeks = Vegetable.create!(
  name: "Leeks",
  growing_length: "150",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Summer")

file15 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161595/Patched/leeks.jpg")
leeks.photo.attach(io: file15, filename: 'leeks.jpg', content_type: 'image/jpg')
leeks.save

leeks_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "To increase the length of white stem, gently draw up dry soil around the plants in stages as they grow, but try not to let soil fall in between the leaves",
  planting_instructions_step_three: "Water during long dry spells and weed regularly",
  harvesting_instructions_step_one: "Harvest when the leeks are still quite small, to increase the cropping period",
  harvesting_instructions_step_two: "Gently lift from the soil using a fork",
  harvesting_instructions_step_three: "Leeks can remain in the ground through the winter until they are needed",
  vegetable: leeks)

lettuce = Vegetable.create!(
  name: "Lettuce",
  growing_length: "60",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Spring")

file16 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160163/Patched/lettuce.jpg")
lettuce.photo.attach(io: file16, filename: 'lettuce.jpg', content_type: 'image/jpg')
lettuce.save

lettuce_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "Water when the soil is dry, ideally early in the morning",
  planting_instructions_step_three: "Early in the year, sparrows can be a problem as they find young lettuce plants irresistible. Protect with fleece, chicken wire or similar",
  harvesting_instructions_step_one: "You can harvest lettuces from late spring through to winter",
  harvesting_instructions_step_two: "Whole lettuces are ready to harvest when a firm heart has formed – cut through the stem at the base",
  harvesting_instructions_step_three: "Loose-leaf varieties can be harvested as soon as the leaves are big enough to be worth eating – either by snipping a few outer leaves from each plant or cutting the whole lot from one plant",
  vegetable: lettuce)

spinach = Vegetable.create!(
  name: "Spinach",
  growing_length: "40",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Autumn")

file17 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623248430/Patched/spinach.jpg")
spinach.photo.attach(io: file17, filename: 'spinach.jpg', content_type: 'image/jpg')
spinach.save

spinach_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "A few weeks later, harvest every alternate plant for use in the kitchen, giving the rest more room to grow",
  planting_instructions_step_three: "Keep well watered during dry periods in summer",
  planting_instructions_step_four: "Winter plantings need protection from the cold so cover the soil around them in fleece",
  harvesting_instructions_step_one: "Harvest the leaves continually once they’re large enough to pick",
  harvesting_instructions_step_two: "To prevent the leaves tasting bitter, make sure the soil is rich by digging in plenty of organic matter, such as garden compost, before sowing",
  vegetable: spinach)

parsley = Vegetable.create!(
  name: "Parsley",
  growing_length: "90",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Spring")

file18 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161263/Patched/parsley.jpg")
parsley.photo.attach(io: file18, filename: 'parsley.jpg', content_type: 'image/jpg')
parsley.save

parsley_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "Keep plants well watered, especially during hot, dry spells in summer",
  planting_instructions_step_three: "Remove flowerheads to extend the cropping life of the plants",
  planting_instructions_step_four: "Snip off any lower shoots that start to turn yellow",
  harvesting_instructions_step_one: "Take a few leafy stems from the outside of a clump, snipping them near the base with scissors",
  harvesting_instructions_step_two: "The leaves are best used fresh, but can also be frozen or dried for use in winter",
  harvesting_instructions_step_three: "To freeze, chop the leaves and add to an ice-cube tray, then top up with water and freeze. You can then simply add the cubes to your cooking whenever needed",
  vegetable: parsley)

cilantro = Vegetable.create!(
  name: "Cilantro",
  growing_length: "70",
  vegetable_area: "20",
  sun_score: "1,2",
  planting_season: "Summer")

file19 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161354/Patched/cilantro.jpg")
cilantro.photo.attach(io: file19, filename: 'cilantro.jpg', content_type: 'image/jpg')
cilantro.save

cilantro_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "Plants do not normally need feeding, but the occasional liquid feed of a balanced fertiliser can be used as a pick-me-up",
  planting_instructions_step_three: "Weed regularly around plants grown for seed production and to prevent a check to growth",
  harvesting_instructions_step_one: "Pick the leaves when young and use fresh or freeze for later. Regular picking encourages more leaves to sprout",
  harvesting_instructions_step_two: "When plants start to flower, either pick the blooms to add to salads, or leave them to form seeds",
  vegetable: cilantro)

chives = Vegetable.create!(
  name: "Chives",
  growing_length: "90",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Spring")

file20 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161398/Patched/chives.jpg")
chives.photo.attach(io: file20, filename: 'chives.jpg', content_type: 'image/jpg')
chives.save

chives_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "Keep plants well watered, especially during long dry spells in summer",
  planting_instructions_step_three: "Chives die back in late autumn. Keep plants looking tidy by clearing away debris",
  harvesting_instructions_step_one: "Cut the leaves as required with scissors, snipping close to the base – the more often they’re harvested, the more new leaves will be produced",
  harvesting_instructions_step_two: "To keep chives productive, remove faded flowers or use the edible blooms when young to brighten salads",
  vegetable: chives)

rosemary = Vegetable.create!(
  name: "Rosemary",
  growing_length: "160",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Spring")

file21 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161377/Patched/rosemary.jpg")
rosemary.photo.attach(io: file21, filename: 'rosemary.jpg', content_type: 'image/jpg')
rosemary.save

rosemary_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant 20cm apart",
  planting_instructions_step_two: "To keep plants compact, cut back stems after the blooms start to fade",
  harvesting_instructions_step_one: "Rosemary can be harvested all year round, but the soft new growth in summer has the best flavour",
  harvesting_instructions_step_two: "Snip off shoots as required, aiming to keep an attractive shape to the plant",
  harvesting_instructions_step_three: "The leaves can be used fresh or dried for later use",
  vegetable: rosemary)

basil = Vegetable.create!(
  name: "Basil",
  growing_length: "30",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Spring")

file22 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160331/Patched/basil.jpg")
basil.photo.attach(io: file22, filename: 'basil.jpg', content_type: 'image/jpg')
basil.save

basil_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant basil outside after all danger of frost has passed, choosing a sunny, sheltered spot with well-drained soil",
  planting_instructions_step_two: "Basil hates having wet roots overnight, so aim to water plants in the morning if possible",
  planting_instructions_step_three: "Keep plants bushy and productive by pinching the tips of branches regularly and remove any flowers that start to develop",
  harvesting_instructions_step_one: "Basil leaves can be harvested throughout the summer",
  harvesting_instructions_step_two: "Remove leaves as required or harvest entire plants if lots of leaves are needed to make pesto or sauce",
  harvesting_instructions_step_three: "If only a few leaves are required, remove the tops of plants to encourage bushy growth",
  vegetable: basil)

dill = Vegetable.create!(
  name: "Dill",
  growing_length: "14",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Spring")

file23 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623160828/Patched/dill.jpg")
dill.photo.attach(io: file23, filename: 'dill.jpg', content_type: 'image/jpg')
dill.save

dill_instructions = Instruction.create!(
  planting_instructions_step_one: "Do not allow soil or compost to dry out. Water plants regularly, especially during hot, dry summers, but do not over water",
  planting_instructions_step_two: "Support plants with garden canes or twiggy sticks to prevent them toppling over in a gust of wind",
  planting_instructions_step_three: "Avoid growing dill near fennel, as the two can cross breed resulting in undesirable seedlings with poor flavour",
  harvesting_instructions_step_one: "Cut the leaves as required during spring and summer. Picking young leaves regularly will help to keep plants productive and delay flowering",
  harvesting_instructions_step_two: "The leaves can be used fresh, or can be either frozen or dried for later use",
  harvesting_instructions_step_three: "The seeds can be gathered in late summer when they start to ripen and turn brown – cut whole stems and put the seedhead in a paper bag, then hang the stems upside down until the seeds dry and drop. Remove any bits of stem, then store the seeds in an air-tight container. The seeds can be used ground or whole",
  vegetable: dill)

thyme = Vegetable.create!(
  name: "Thyme",
  growing_length: "28",
  vegetable_area: "20",
  sun_score: "3,4",
  planting_season: "Summer")

file24 = URI.open("https://res.cloudinary.com/dmixbgvgw/image/upload/v1623161329/Patched/thyme.jpg")
thyme.photo.attach(io: file24, filename: 'thyme.jpg', content_type: 'image/jpg')
thyme.save

thyme_instructions = Instruction.create!(
  planting_instructions_step_one: "Plant your thyme seedlings 20cm apart",
  planting_instructions_step_two: "Remove fallen leaves that settle on thyme plants in autumn to prevent rotting",
  planting_instructions_step_three: "Protect plants from excessive winter wet by placing in a rain shadow or a dry, light position",
  harvesting_instructions_step_one: "The leaves can be harvested all year round, but the soft new growth in summer has the best flavour",
  harvesting_instructions_step_two: "Use scissors to snip off young shoots whenever needed, but take care not to spoil the shape of the plant. Regular harvesting helps to keep thyme compact and bushy, with lots of new leaves",
  harvesting_instructions_step_three: "The leaves can be used fresh or dried for later use",
  vegetable: thyme)

puts 'Added vegetables complete'
