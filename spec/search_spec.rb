require './classes/search'

describe 'Search' do
   it 'allows reading and writing for :select_ingredient' do
      user_choice = Search.new
      user_choice.select_ingredient = 'cheese'
      expect(user_choice.select_ingredient).to eq('cheese')
   end

   # it 'allows user input for :select_ingredient' do


   # it 'returns a string in the expected format' do
   #    @user_choice = Search.new(:ingredient_input)
   #    user_choice.ingredient_input = 'cheese'
   # end

   #it 'return string when sting 'n' is inputted' do

   # end

end
