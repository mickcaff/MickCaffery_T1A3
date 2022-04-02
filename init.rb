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

# MAIN APP
function.list
loop do
   function.search_main
   function.read_recipe
   function.add_ingredients_prompt
   case function.add_ingredients
   when 'Yes'
      function.list_add
      if function.search_again == 'Search again'
         next
      else
         break
      end
   when 'No'
      next
   when 'Exit'
      break
   end
end
function.list_output
function.display
