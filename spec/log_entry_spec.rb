# frozen_string_literal: true

RSpec.describe LogParser::LogEntry do
  it 'filters the ids from the page and remove the last /' do
    log_entry = LogParser::LogEntry.new(['/noids/21', '192.12.1.1'])
    expect('/noids').to eq(log_entry.filter_id)

    log_entry = LogParser::LogEntry.new(['/noids', '192.12.1.1'])
    expect('/noids').to eq(log_entry.filter_id)
  end
end
