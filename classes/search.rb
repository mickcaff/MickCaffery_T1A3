require 'json'
require "tty-prompt"

class Search

   attr_accessor :select_ingredient
   attr_accessor :recipe_search
   attr_reader :recipes_init
   attr_accessor :selection
   attr_accessor :no_ingr

   def initialize
      @recipes_init = JSON.load_file('./json/recipes.json', symbolize_names: true)
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
            puts "There are no recipes which contain #{@select_ingredient}." 
            puts "Please search again"
            puts ""
            next
         end
         break
      end
   end

   def results_prompt
      prompt = TTY::Prompt.new
      choices = @recipe_search
      @selection = prompt.select("Please select from the following recipes that contain #{@select_ingredient}:", choices)
   end

   def search_main
      @no_ingr = true
      search_each
      results_prompt
   end
end
