# frozen_string_literal: true

RSpec.describe LogParser::PageCollection do
  it 'sorts the hashs in a descending order' do
    pages_collection = LogParser::PageCollection.new
    pages_collection.orignal_pages['first'] = 1
    pages_collection.orignal_pages['second'] = 2
    pages_collection.sort_collections_desc
    expect(pages_collection.orignal_pages.first[1]).to eq(2)
  end
end
