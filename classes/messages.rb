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
end
