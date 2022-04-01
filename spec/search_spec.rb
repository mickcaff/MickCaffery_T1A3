require './classes/search'

describe 'Search' do

   it 'is loaded into a variable' do
      recipes = Search.new
      expect(recipes.recipes_init.empty?).to eq(false)
   end

   it 'allows reading and writing for :select_ingredient' do
      user_choice = Search.new
      user_choice.select_ingredient = 'cheese'
      expect(user_choice.select_ingredient).to eq('cheese')
   end

   #method only returns nil
   it 'results are displayed' do
      display_test = Search.new
      display_test.recipe_search = ['cheese']
      expect(display_test.selection).to eq(nil)
   end
   # Need to find way to test def se
   # it 'will search for ingredient included in array' do
   #    search_test = Search.new
   #    search_test.select_ingredient = 'cream'
   #    expect(search_test.recipe_search.empty?).to eq(false)
   # end



end
   # it 'displays searched ingredients in array' do  
   #    choice1 = Search.new
   #    choice1.search_json_ingredients



   # it 'allows user input for :select_ingredient' do


   # it 'returns a string in the expected format' do
   #    @user_choice = Search.new(:ingredient_input)
   #    user_choice.ingredient_input = 'cheese'
   # end

   #it 'return string when sting 'n' is inputted' do

   # end


