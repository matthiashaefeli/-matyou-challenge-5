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

describe 'order weight' do
  it 'orders the given number in order of their sum' do
    expect(order_weight('103 123 4444 99 2000')).to eq '2000 103 123 4444 9'
  end

  it 'orders the given number in order of their sum' do
    expect(order_weight('2000 10003 1234000 44444444 9999 11 11 22 123')).to eq '2000 11 11 10003 22 123 1234000 44444444 9999'
  end
end

describe 'remove element' do
  it 'removes from first array all elemnets given as second argument' do
    expect(remove_element([1, 2], [1])).to eq [2]
  end

  it 'removes from first array all elemnets given as second argument' do
    expect(remove_element(['a', 'b', 'c', 'a'], ['a'])).to eq ['b', 'c']
  end

  it 'removes from first array all elemnets given as second argument' do
    expect(remove_element([1, 'b', 345, 'gh', 2, 67, 'll', 'er', 'e'], [1, 'e'])).to eq  ['b', 345, 'gh', 2, 67, 'll', 'er']
  end
end

describe 'anagram' do
  it 'returns an array with anagram from given arguments' do
    expect(anagram('aba', ['aba', 'abba', 'ab', 'bba', 'baa', 'aab'])).to eq ['aba', 'baa', 'aab']
  end

  it 'returns an array with anagram from given arguments' do
    expect(anagram('cde', ['cdef', 'dc', 'cde', 'dec', 'dce', 'aab'])).to eq ['cde', 'dec', 'dce']
  end
end

describe 'pairs' do
  it 'returns a given string in pairs, given as second argument, last pair with underscore' do
    expect(pairs('abcd', 2)).to eq ['ab', 'cd']
  end

  it 'returns a given string in pairs, given as second argument, last pair with underscore' do
    expect(pairs('abcdefghi', 2)).to eq ['ab', 'cd', 'ef', 'gh', 'i_']
  end

  it 'returns a given string in pairs, given as second argument, last pair with underscore' do
    expect(pairs('zzzbbbuuutttddde', 3)).to eq ['zzz', 'bbb', 'uuu', 'ttt', 'ddd', 'e__']
  end
end

describe 'scramble' do
  it 'returns true if the argument 1 includes argument 2' do
    expect(scramble('rkqodlw', 'world')).to be true
  end

  it 'returns true if the argument 1 includes argument 2' do
    expect(scramble('cedewaraaossoqqyt', 'codewars')).to be true
  end

  it 'returns false if the argument 1 includes argument 2' do
    expect(scramble('raksdjdnieepilseerdjgldlskd', 'ruby')).to be false
  end
end

describe 'triples' do
  it 'returns true if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2' do
    expect(triples(451999277, 41177722899)).to be true
  end

  it 'returns false if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2' do
    expect(triples(10560002, 0100)).to be false
  end
end

describe 'numbers and letters' do
  it 'returns an array, array[0] is iqual to the numbers and array[1] is same order of all letters' do
    list = ['u', '6', 'd', '1', 'i', 'w', '6', 's', 't', '4', 'a', '6', 'g', '1', '2', 'w', '8', 'o', '2', '0']
    expect(numbers_letters(list)).to eq [36, 'udiwstagwo']
  end

  it 'returns an array, array[0] is iqual to the numbers and array[1] is same order of all letters' do
    list = ['0', 'c', '7', 'x', '6', '2', '3', '5', 'w', '7', '0', 'y', 'v', 'u', 'h', 'i', 'n', 'u', '0', '0']
    expect(numbers_letters(list)).to eq [30, 'cxwyvuhinu']
  end

  it 'returns an array, array[0] is iqual to the numbers and array[1] is same order of all letters' do
    list = ['1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'a', 'a', 'd', 'd', 'g', 'q', 'u', 'v', 'y', 'y']
    expect(numbers_letters(list)).to eq [10, 'aaddgquvyy']
  end
end

describe 'operation' do
  it 'returns result of given operation' do
    expect(operation('+', 4, 7)).to eq 10
  end

  it 'returns result of given operation' do
    expect(operation('-', 7, 4)).to eq 3
  end

  it 'returns result of given operation' do
    expect(operation('*', 7, 4)).to eq 28
  end

  it 'returns result of given operation' do
    expect(operation('/', 12, 3)).to eq 4
  end
end

describe 'best sum' do
  it 'arg1 is sum, arg2 items and arg3 the list. return best sum of list with number of items' do
    list = [50, 55, 56, 57, 58]
    expect(best_sum(163, 3, list)).to be 163
  end

  it 'arg1 is sum, arg2 items and arg3 the list. return best sum of list with number of items' do
    list = [91, 74, 73, 85, 73, 81, 87]
    expect(best_sum(230, 3, list)).to eq 228
  end
end


