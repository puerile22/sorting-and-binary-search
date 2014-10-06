require 'rspec'
require 'pry-byebug'
require_relative '../lib/sort.rb'
describe 'Sorting' do
  let(:arr) {[1,2]}
  let(:arr1) {[2,1]}
  let(:arr2) {[3,2,1]}
  let(:arr3) {[2,3,1]}
  let(:arr4) {[-1,2,0]}
  let(:arr5) {[-1,3.2,-2.4,21,4]}
  let(:arr6) {[2,2,4,3,5]}
  let(:sort) {Sorting.new}
  describe '#sort' do
    it "return an array" do 
      expect(sort.sort(arr)).to eq([1,2])
      expect(sort.mergesort(arr)).to eq([1,2])
    end
    it "sort an array" do
      expect(sort.sort(arr1)).to eq([1,2])
      expect(sort.sort(arr2)).to eq([1,2,3])
      expect(sort.sort(arr3)).to eq([1,2,3])
      expect(sort.mergesort(arr1)).to eq([1,2])
      expect(sort.mergesort(arr2)).to eq([1,2,3])
      expect(sort.mergesort(arr3)).to eq([1,2,3])
    end
    it "deals with negative numbers" do 
      expect(sort.sort(arr4)).to eq([-1,0,2])
      expect(sort.mergesort(arr4)).to eq([-1,0,2])
    end
    it "deals with decimals" do
      expect(sort.sort(arr5)).to eq([-2.4,-1,3.2,4,21])
      expect(sort.mergesort(arr5)).to eq([-2.4,-1,3.2,4,21])
    end
    it "deals with duplicates" do
      expect(sort.sort(arr6)).to eq([2,2,3,4,5])
      expect(sort.mergesort(arr6)).to eq([2,2,3,4,5])
    end
  end
end