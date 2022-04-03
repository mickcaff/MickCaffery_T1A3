require './classes/messages'

describe 'messages' do
   it 'displays inputted message using p' do
      message = Messages.new
      expect(message.message_p("Hello")).to eq("Hello")
   end

   it 'displays inputted message using puts' do
      message = Messages.new
      expect(message.message_puts("Hello")).to eq("Hello")
   end

   it 'displays inputted message using puts' do
      message = Messages.new
      expect(message.message_print("Hello")).to eq("Hello")
   end
end
