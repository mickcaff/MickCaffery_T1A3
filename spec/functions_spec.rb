require './classes/functions'

describe 'Search' do
   it 'is loaded into a variable' do
      recipes = Functions.new
      expect(recipes.recipes_init.empty?).to eq(false)
   end

   it 'allows reading and writing for :select_ingredient' do
      user_choice = Functions.new
      user_choice.select_ingredient = 'cheese'
      expect(user_choice.select_ingredient).to eq('cheese')
   end
end
