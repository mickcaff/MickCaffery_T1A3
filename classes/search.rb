require 'json'

class Search
   
   # include JsonMod
   attr_accessor :select_ingredient
   attr_accessor :recipe_search
   attr_reader :recipes_init

   def initialize
      @recipes_init = JSON.load_file('./json/recipes.json', symbolize_names: true)
   end

   def user_input
      @select_ingredient = gets.chomp
   end

   # def search_each
   #    recipe_search = []
   #    @recipes_init.each do |recipe|
   #       if recipe[:ingredients].include?(user_search.select_ingredient)
   #          recipe_search << recipe[:title]
   #       # no_ingr = false
   #       end
   # end
end



   # def search_json_ingredients
   #    @recipes_init.each do |recipe|
   #       if recipe[:ingredients].include?(@select_ingredient)
   #          return recipe[:title]
   #          p recipe[:title]
   #       else
   #       end
   # end
