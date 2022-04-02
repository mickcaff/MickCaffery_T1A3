# IMPORTS - CLASSES
require "./classes/functions"
require "./classes/decoration"
require "./classes/messages"
# IMPORTS - GEMS
require "tty-font"
require "tty-prompt"
# require "pastel"

# CONSTANTS
font = TTY::Font.new(:standard)
break_line = Decoration.new
message = Messages.new
function = Functions.new
pastel = Pastel.new

# TITLE & WELCOME BANNER
puts font.write("RECIPE PRO")
break_line.single_line(72)
message.message_puts("#{"-"*10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{"-"*9}")
break_line.single_line(72)
message.message_puts("")

# SEARCH INGREDIENTS
function.search_main
function.read_recipe
function.search_again_prompt
# p function.selection.class
# puts pastel.red("Unicorns!")
