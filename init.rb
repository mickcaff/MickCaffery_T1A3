# IMPORTS - CLASSES
require "./classes/functions"
require "./classes/decoration"
require "./classes/messages"
# IMPORTS - GEMS
# require "json"
require "tty-font"
require "tty-prompt"

# CONSTANTS
font = TTY::Font.new(:standard)
break_line = Decoration.new
message = Messages.new
function = Functions.new
# pastel = Pastel.new
argument1 = ARGV[0]
argument2 = ARGV[1]

# CLI ARGUMENTS
case argument1
when '--help'
   File.foreach("./txt/help.txt") do |line|
      puts line
   end
   exit
when '--about'
   File.foreach("./txt/about.txt") do |line|
      puts line
   end
   exit
when '--list'
   sorted_titles = []
   function.recipes_init.each do |recipe|
      sorted_titles << recipe[:title]
   end
   puts sorted_titles.sort
   exit
when 'chef'
   chef_name = "#{argument1} #{argument2}"
   chef = File.open("./txt/chef.txt", "w")
   chef.puts(chef_name)
   chef.close
   puts "Nice one Chef #{argument2.capitalize}. Happy Cheffing "
   exit
when '--clear'
   clear_chef = File.open("./txt/chef.txt", "w")
   clear_chef.puts([])
   clear_chef.close
   puts "Chef name cleared"
   exit
else
   exit
end

# TITLE & WELCOME BANNER
if File.empty?("./txt/chef.txt")
   puts font.write("RECIPE  PRO")
else
   chef_new = File.new("./txt/chef.txt", 'r')
   chef_who = chef_new.gets.chomp.upcase
   chef_new.close
   puts font.write(chef_who)
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
