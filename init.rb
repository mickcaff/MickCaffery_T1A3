# IMPORTS - CLASSES
require "./classes/functions"
require "./classes/messages"
# IMPORTS - GEMS
require "json"
require "tty-font"
require "tty-prompt"

# CONSTANTS
message = Messages.new
function = Functions.new

begin
   # TITLE & WELCOME BANNER
   message.print_logo
   message.print_welcome

   # MAIN APP
   # Clear shopping_list.txt to begin
   function.clear_list
   function.list
   # Main loop with 3 main features
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
   # Output shopping_list.txt to finish
   function.list_output
   function.display
rescue Interrupt
   puts "You ended the program!"
rescue
   puts "Sorry, something unexpected has happened"
end
