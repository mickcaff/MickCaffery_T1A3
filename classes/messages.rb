class Messages
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

   def print_logo
      if File.empty?("./txt/help/chef.txt")
         puts font2.write("RECIPE  PRO")
      else
         chef_new = File.new("./txt/help/chef.txt", 'r')
         chef_who = chef_new.gets.chomp.upcase
         chef_new.close
         puts font2.write(chef_who)
      end
   end

   def print_welcome
      single_line(72)
      message_puts("#{"-"*10} WELCOME TO RECIPE PRO - YOUR GROCERY LIST COMPANION #{"-"*9}")
      single_line(72)
      message_puts("")
   end
end
