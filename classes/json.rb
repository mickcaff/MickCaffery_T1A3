require 'json'

class Json

   attr_reader :recipes_init

   def initialize
      @recipes_init = JSON.load_file('./json/recipes.json', symbolize_names: true)
   end

end