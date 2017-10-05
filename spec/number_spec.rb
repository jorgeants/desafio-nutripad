# -*- encoding : utf-8 -*-
require 'number'

describe Number do
	context '#convert_to_word' do
		it 'with negative number' do
			expect{subject.convert_to_word(-10)}.to raise_error('It is not positive number')
		end

		it 'with string' do
			expect{subject.convert_to_word('AAA')}.to raise_error('It is not integer number')
		end

		it 'with decimal number' do
			expect{subject.convert_to_word(33.3)}.to raise_error('It is not integer number')
		end

		it '0 to zero' do
			expect(subject.convert_to_word(0)).to eq('zero')
		end

		it '2 to two' do
			expect(subject.convert_to_word(2)).to eq('two')
		end

		it '10 to ten' do
			expect(subject.convert_to_word(10)).to eq('ten')
		end

		it '19 to nineteen' do
			expect(subject.convert_to_word(19)).to eq('nineteen')
		end

		it '20 to twety' do
			expect(subject.convert_to_word(20)).to eq('twenty')
		end

		it '21 to twety one' do
			expect(subject.convert_to_word(21)).to eq('twenty one')
		end

		it '23 to twenty three' do
			expect(subject.convert_to_word(23)).to eq('twenty three')
		end

		it '50 to fifty' do
			expect(subject.convert_to_word(50)).to eq('fifty')
		end

		it '52 to fifty two' do
			expect(subject.convert_to_word(52)).to eq('fifty two')
		end

		it '90 to ninety' do
			expect(subject.convert_to_word(90)).to eq('ninety')
		end

		it '99 to ninety nine' do
			expect(subject.convert_to_word(99)).to eq('ninety nine')
		end

		it '100 to one hundred' do
			expect(subject.convert_to_word(100)).to eq('one hundred')
		end

		it '101 to one hundred one' do
			expect(subject.convert_to_word(101)).to eq('one hundred one')
		end

		it '132 to one hundred thirty two' do
			expect(subject.convert_to_word(132)).to eq('one hundred thirty two')
		end

		it '173 to one hundred thirty two' do
			expect(subject.convert_to_word(173)).to eq('one hundred seventy three')
		end

		it '566 to five hundred sixty six' do
			expect(subject.convert_to_word(566)).to eq('five hundred sixty six')
		end

		it '999 to nine hundred ninety nine' do
			expect(subject.convert_to_word(999)).to eq('nine hundred ninety nine')
		end

		it '1000 to one thousand' do
			expect(subject.convert_to_word(1000)).to eq('one thousand')
		end

		it '1200 to one thousand two hundred' do
			expect(subject.convert_to_word(1200)).to eq('one thousand two hundred')
		end

		it '1468 to one thousand four hundred sixty eight' do
			expect(subject.convert_to_word(1468)).to eq('one thousand four hundred sixty eight')
		end

		it '2468 to two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(2468)).to eq('two thousand four hundred sixty eight')
		end

		it '32468 to thirty two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(32468)).to eq('thirty two thousand four hundred sixty eight')
		end

		it '132468 to one hundred thirty two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(132468)).to eq('one hundred thirty two thousand four hundred sixty eight')
		end

		it '532468 to five hundred thirty two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(532468)).to eq('five hundred thirty two thousand four hundred sixty eight')
		end

		it '1532468 to one million five hundred thirty two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(1532468)).to eq('one million five hundred thirty two thousand four hundred sixty eight')
		end

		it '2111532468 to two billion one hundred eleven million five hundred thirty two thousand four hundred sixty eight' do
			expect(subject.convert_to_word(2111532468)).to eq('two billion one hundred eleven million five hundred thirty two thousand four hundred sixty eight')
		end
	end
end