# This Code relates to the opening logo and welcome message. Along with methods to print, puts & p.
class Messages
   attr_reader :font

   def font_init2
      @font = TTY::Font.new(:standard)
   end

   def message_p(input)
      p input
   end

   def message_puts(input)
      puts input
      return input
   end

   def message_print(input)
      print input
      return input
   end

   def single_line(length)
      puts "-" * length
   end

   # Opening Logo
   def print_logo
      if File.empty?("./txt/help/chef.txt")
         puts font_init2.write("RECIPE  PRO")
      else
         chef_new = File.new("./txt/help/chef.txt", 'r')
         chef_who = chef_new.gets.chomp.upcase
         chef_new.close
         puts font_init2.write(chef_who)
      end
   end

   # Welcome Decoration
   def print_welcome
      single_line(72)
      message_puts("#{'-' * 10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{'-' * 9}")
      single_line(72)
      message_puts("")
   end
end
