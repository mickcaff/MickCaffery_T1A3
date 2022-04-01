# IMPORTS - CLASSES
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
search = Search.new

# TITLE & WELCOME BANNER
puts font.write("RECIPE PRO")
break_line.single_line(72)
message.message_puts("#{"-"*10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{"-"*9}")
break_line.single_line(72)
message.message_puts("")

# SEARCH INGREDIENTS
   search.search_main
