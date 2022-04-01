require './classes/messages'

describe 'messages' do
   it 'displays inputted message using p' do
      message1 = Messages.new
      expect(message1.message_p("Hello")).to eq("Hello")
   end

   it 'displays inputted message using puts' do
      message2 = Messages.new
      expect(message2.message_puts("Hello")).to eq("Hello")
   end

   it 'displays inputted message using puts' do
      message3 = Messages.new
      expect(message3.message_print("Hello")).to eq("Hello")
   end
end
