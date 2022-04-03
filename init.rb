# IMPORTS - CLASSES
require "./classes/functions"
require "./classes/decoration"
require "./classes/messages"
# IMPORTS - GEMS
require "json"
require "tty-font"
require "tty-prompt"

# CONSTANTS
font2 = TTY::Font.new(:standard)
break_line = Decoration.new
message = Messages.new
function = Functions.new

# TITLE & WELCOME BANNER
begin
   if File.empty?("./txt/chef.txt")
      puts font2.write("RECIPE  PRO")
   else
      chef_new = File.new("./txt/chef.txt", 'r')
      chef_who = chef_new.gets.chomp.upcase
      chef_new.close
      puts font2.write(chef_who)
   end
   break_line.single_line(72)
   message.message_puts("#{"-"*10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{"-"*9}")
   break_line.single_line(72)
   message.message_puts("")

   # MAIN APP
   function.clear_list
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
rescue Interrupt
   puts "You ended the program!"
rescue
   puts "Sorry, something unexpected has happened"
end
