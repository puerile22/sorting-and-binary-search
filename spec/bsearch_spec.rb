require 'rspec'
require_relative '../lib/bsearch.rb'

describe 'bsearch'  do
  it 'returns the index of the element searched for' do
    arr=[1,2,3,4]
    expect(bsearch(arr,1)).to eq(0)
    arr=[2,5,89,1023,123123,444123561]
    expect(bsearch(arr,89)).to eq(2)
  end
  it 'returns the index of the word or number that is closest to what is searching for' do
    arr=['apple','banana','pear','raspberry']
    expect(bsearch(arr,'blueberry')).to eq(2)
    arr=[1,3,5,6,8,23,55,69]
    expect(bsearch(arr,32)).to eq(6)
  end
end

describe 'ibsearch'  do
  it 'returns the index of the element searched for' do
    # arr=[1,2,3,4]
    # expect(ibsearch(arr,1)).to eq(0)
    arr=[2,5,89,1023,123123,444123561]
    expect(ibsearch(arr,89)).to eq(2)
  end
  it 'returns the index of the word or number that is closest to what is searching for' do
    arr=['apple','banana','pear','raspberry']
    expect(ibsearch(arr,'blueberry')).to eq(2)
    arr=[1,3,5,6,8,23,55,69]
    expect(ibsearch(arr,32)).to eq(6)
  end
end