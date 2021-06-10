# frozen_string_literal: true

RSpec.describe LogParser::FileLoader do
  it 'reads the log file and saves the entry in hashes' do
    file_loader = LogParser::FileLoader.new
    pages_collection = file_loader.load_file
    expect('/help_page/1').to eq(pages_collection.orignal_pages.first[0])
    expect('/help_page').to eq(pages_collection.no_id_pages.first[0])
  end

  it 'reads the log file from parameter and saves the entry in hashes' do
    file_loader = LogParser::FileLoader.new
    file = File.join(File.expand_path('..', Dir.pwd), 'log-parser/data/webserver_test.log')
    pages_collection = file_loader.load_file(file)
    expect('/about/2').to eq(pages_collection.orignal_pages.first[0])
    expect('/about').to eq(pages_collection.no_id_pages.first[0])
  end

  it 'rescues the error raised while trying to read invalid log files' do
    file_loader = LogParser::FileLoader.new
    allow(file_loader).to receive(:load_file) { StandardError }
    file = File.join(File.expand_path('..', Dir.pwd), 'log-parser/data/NOT_A_FILE')
    expect(file_loader.load_file(file)).to eq StandardError
  end
end
