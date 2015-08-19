require_relative './spec_helper.rb'

describe 'is_anagram?' do
  context 'strings are anagrams of each other:' do
    it 'returns "true" when strings are anagrams of each other' do
      string_1 = is_anagram?('string', 'srting')
      expect(string_1).to eq(true)
    end
    it 'returns "true" when strings are anagrams of each other' do
      string_2 = is_anagram?('1string', 'srting1')
      expect(string_2).to eq(true)
    end
    it 'returns "true" when both strings are empty' do
      string_3 = is_anagram?('', '')
      expect(string_3).to eq(true)
    end
  end

  context 'strings are not anagrams of each other:' do
    it 'returns "false" when strings are not anagrams of each other' do
      string_4 = is_anagram?('string', 'srr3ting')
      expect(string_4).to eq(false)
    end
    it 'returns "false" when strings are not anagrams of each other' do
      string_5 = is_anagram?('string', 'String')
      expect(string_5).to eq(false)
    end
    it 'returns "false" when one string is blank' do
      string_6 = is_anagram?('string', '')
      expect(string_6).to eq(false)
    end
  end
end