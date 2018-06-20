require './src/challenge.rb'

describe 'test' do 
  it 'returns a given string' do 
    expect(test('Hello World')).to eq 'Hello World'
  end
end

describe 'permutation palindrome' do
  it 'returns true if any permutation of a string is a palindrome' do
    expect(permutation_palindrome('civic')).to eq true
  end

  it 'returns true if any permutation of a string is a palindrome' do
    expect(permutation_palindrome('ivicc')).to eq true
  end

  it 'returns true if any permutation of a string is a palindrome' do
    expect(permutation_palindrome('civi')).to eq false
  end

  it 'returns true if any permutation of a string is a palindrome' do
    expect(permutation_palindrome('livci')).to eq false
  end
end
