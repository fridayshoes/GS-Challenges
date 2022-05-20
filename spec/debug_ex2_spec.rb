require 'debug_ex2'

RSpec.describe 'debug cipher' do
  context 'when a string of text is entered' do
    it 'encodes the text' do
      result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
      expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end
  end

  context 'when a string of text is entered' do
    it 'decodes the text' do
      result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
      expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
  end
end