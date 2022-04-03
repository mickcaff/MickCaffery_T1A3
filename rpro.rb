# IMPORTS
require "./classes/functions"

# CLI ARGUMENTS
argument1 = ARGV[0]
argument2 = ARGV[1]
function_rpro = Functions.new

# CLI COMMANDS
case argument1
when '--help'
   File.foreach("./txt/help/help.txt") do |line|
      puts line
   end
   exit
when '--about'
   File.foreach("./txt/help/about.txt") do |line|
      puts line
   end
   exit
when '--list'
   sorted_titles = []
   function_rpro.recipes_init.each do |recipe|
      sorted_titles << recipe[:title]
   end
   puts sorted_titles.sort
   exit
when 'chef'
   chef_name = "#{argument1} #{argument2}"
   chef = File.open("./txt/help/chef.txt", "w")
   chef.puts(chef_name)
   chef.close
   puts "Nice one Chef #{argument2.capitalize}. Happy Cheffing "
   exit
when '--clear'
   clear_chef = File.open("./txt/help/chef.txt", "w")
   clear_chef.puts([])
   clear_chef.close
   puts "Chef name cleared"
   exit
else
   puts "Sorry, that command was incorrect"
   puts "Select from either --help, --about, --list"
   puts "or type chef 'your name' for a bit of fun, i.e 'ruby rpro.rb chef glen'"
   exit
end
