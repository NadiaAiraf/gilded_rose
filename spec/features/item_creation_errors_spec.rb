require 'item'

RSpec.describe 'error cases' do
  it 'errors if you try to create an item above 50 quality' do
    expect { Item.new('apple', 10, 600) }.to raise_error 'Quality cannot be above 50'
  end

end
