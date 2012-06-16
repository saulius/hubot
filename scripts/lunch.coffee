#
# I'll pick a place for lunch for you, lazy bastards.
#

module.exports = (robot) ->
  restaurants = [
    "Eat",
    "Pret",
    "nearby fancy restaurant",
    "some salad",
    "burrito",
    "nearby cantine",
    "dodgy sandwich place",
    "Nando's?",
    "Itsu",
    "Wasabi",
    "Strada",
    "Fish & Chips",
    "Beer and nothing more!",
    "a burger",
    "sushi",
    "some Indian dish",
    "Chinese today"
  ]

  preamble = [
    'How about',
    'What about',
    'I think you might like',
    'You should try',
    'Umm...'
  ]

  robot.respond /(.*)eat lunch(.*)/i, (msg) ->
    msg.reply msg.random(preamble) + ' ' + msg.random(restaurants)
