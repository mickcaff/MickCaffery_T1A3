require './classes/json'

describe 'json' do

   it 'is loaded into a variable' do
      recipes = Json.new
      expect(recipes.recipes_init.empty?).to eq(false)
   end
end