RSpec.describe Array do
  let(:arary) do
    [
      { str: 'b1' }, { str: 'a10' }, { str: 'b100' },
      { str: 'a20' }, { str: 'a3' }, { str: 'b2' },
      { str: 'a1' }, { str: 'b10' }, { str: 'a100' },
      { str: 'b20' }, { str: 'b3' }, { str: 'a2' }
    ]
  end

  let(:sorted_array) do
    [
      { str: 'a1' }, { str: 'a2' }, { str: 'a3' },
      { str: 'a10' }, { str: 'a20' }, { str: 'a100' },
      { str: 'b1' }, { str: 'b2' }, { str: 'b3' },
      { str: 'b10' }, { str: 'b20' }, { str: 'b100' }
    ]
  end

  it 'has a version number' do
    expect(HumanizedSortBy::VERSION).not_to be nil
  end

  it 'sorting an array of hashes by key' do
    expect(arary.humanized_sort_by(:str)).to eq sorted_array
  end
end
