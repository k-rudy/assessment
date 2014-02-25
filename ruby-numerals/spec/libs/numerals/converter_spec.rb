require 'spec_helper'

describe Numerals::Converter do
  
  subject { Numerals::Converter }
  
  describe '#convert' do
    
    it 'converts long numbers correctly' do
      expect(subject.convert('1999')).to eq('one thousand, nine hundred and ninety-nine')
    end
    
    it 'converts non-integers correctly' do
      expect(subject.convert('2001.3')).to eq('two thousand and one point three')
    end
      
    it 'converts negatives correctly' do
      expect(subject.convert('-27')).to eq('minus twenty-seven')
    end
    
    it 'returns empty string when string is not a number' do
      expect(subject.convert('testus')).to eq('')
    end
    
    it 'returns empty string when input is empty' do
      expect(subject.convert('')).to eq('')
    end
  end
end