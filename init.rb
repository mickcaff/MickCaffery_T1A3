# IMPORTS - CLASSES
# require "./modules/json"
require "./classes/search"
require "./classes/decoration"
require "./classes/messages"
# IMPORTS - GEMS
require "tty-font"
require "tty-prompt"

# CONSTANTS
font = TTY::Font.new(:standard)
break_line = Decoration.new
message = Messages.new
prompt = TTY::Prompt.new
search = Search.new
# recipes = JsonMod::Json.new
prompt = TTY::Prompt.new

# TITLE & WELCOME BANNER
puts font.write("RECIPE PRO")
break_line.single_line(72)
message.message_puts("#{"-"*10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{"-"*9}")
break_line.single_line(72)
message.message_puts("")

# SEARCH INGREDIENTS
message.message_puts("Which ingredient would you like to search for?")
message.message_print("> ")
search.user_input
message.message_puts("")
message.message_puts("The following recipes contain #{search.select_ingredient}")

# SEARCH - MAIN LOOP
recipe_search = []
search.recipes_init.each do |recipe|
   if recipe[:ingredients].include?(search.select_ingredient)
      # p "#{recipe[:title]}"
      recipe_search << recipe[:title]
      no_ingr = false
   end
end

choices = recipe_search
selection = prompt.select("Please select from the following recipes that contain #{search.select_ingredient}:", choices)
p selection
# choices = %w(small medium large)
# prompt.select("What size?", choices)
# p choices
