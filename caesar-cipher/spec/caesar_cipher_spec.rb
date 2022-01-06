# spec/caesar_cipher_spec.rb
require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'output correct downcase' do
    expect(caesar_cipher('sfad dasfdfsa', 5)).to eql('xkfi ifxkikxf')
  end

  it 'output correct upcase' do
    expect(caesar_cipher('FASSAF RFHZVFSAD', 5)).to eql('KFXXFK WKMEAKXFI')
  end
end
