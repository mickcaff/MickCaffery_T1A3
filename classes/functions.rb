require 'json'
require "tty-prompt"
require 'colorize'

class Functions

   attr_accessor :select_ingredient
   attr_accessor :recipe_search
   attr_reader :recipes_init
   attr_accessor :prompt
   attr_accessor :selection
   attr_accessor :no_ingr
   attr_accessor :choices
   attr_accessor :shopping_list
   attr_accessor :add_response

   def initialize
      @recipes_init = JSON.load_file('./json/recipes.json', symbolize_names: true)
   end

   def prompt
      @prompt = TTY::Prompt.new
   end

   def user_input
      @select_ingredient = gets.chomp
   end

   def search_array
      @recipe_search = []
   end

   def ingr_var
      @no_ingr == true
   end

   def search_each
      loop do
         puts "Which ingredient would you like to search for?"
         print "> "
         user_input
         puts ""
         ingr_var
         search_array
         @recipes_init.each do |recipe|
            if recipe[:ingredients].include?(@select_ingredient)
               @recipe_search << recipe[:title]
               @no_ingr = false
            end
         end
         if @no_ingr == true
            puts "There are no recipes which contain " + "#{@select_ingredient}".colorize(:red) +"."
            puts "Please search again"
            puts ""
            next
         end
         break
      end
   end

   def results_prompt
      prompt
      @choices = @recipe_search
      @choices << "Search Again"
      @selection = prompt.select("Please select from the following recipes that contain #{@select_ingredient}:", @choices)
   end

   def search_main
      loop do
         @no_ingr = true
         search_each
         results_prompt
         if @selection == 'Search Again'
            puts ""
            next
         else
            break
         end
      end
   end

   def read_recipe
      @recipes_init.each do |recipe|
         if @selection == recipe[:title]
            fileobject = File.read("./txt/#{recipe[:title]}.txt")
            puts ""
            puts "-"*10
            puts fileobject
            puts "-"*10
            puts ""
         end
      end
   end

   def search_again_prompt
      prompt
      choices2 = ['Yes', 'Search Again', 'Exit']
      @search_again = prompt.select("Would you like to add these ingredients to your shopping list?", choices2)
   end

   # def list_add
   #    @recipes_init.each do |recipe|
   #       if @selection == recipe[:title]
   #          @shopping_list += recipe[:ingredients]
   #       end
   #    end
   # end

   # def
   #    if @add_response = 
   # end   


end
