
require 'check_codeword'

RSpec.describe 'Check_codeword method' do
  context 'When you enter the correct password' do
    it 'tell the user correct! Come in.' do
      result = check_codeword("horse")
      expect(result).to eq 'Correct! Come in.'
    end
  end

  context 'When you enter a password starting with h and ending with e' do
    it 'reters a messahe close but not nope' do
      result = check_codeword('home')
      expect(result).to eq 'Close, but nope.'
    end
  end

  context 'when the code word is incorrect' do
    it 'returns the message wrong' do
      result = check_codeword('time')
      expect(result).to eq 'WRONG!'
    end
  end

end