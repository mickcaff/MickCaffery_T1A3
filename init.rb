require('./classes/json')
require('./classes/search')
require('./classes/decoration')
require('./classes/messages')


# SEARCH INGREDIENTS
font = TTY::Font.new(:standard)
recipes = Json.new
user_search = Search.new
break_line = Decoration.new
message = Messages.new


puts pastel.cyan(font.write("RECIPE"))
break_line.single_line(40)
message.message_p("Which ingredient would you like to search for?")
message.message_print("> ")
user_search.user_input
message.message_p("The following recipes contain #{user_search.select_ingredient}")
break_line.single_line(40)
