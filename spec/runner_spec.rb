# frozen_string_literal: true

RSpec.describe LogParser::Runner do
  it 'runs the whole application' do
    LogParser::Runner.run
  end

  it 'prints each line of a hash with a sufix' do
    expect($stdout).to receive(:puts).with('key value sufix')
    LogParser::Runner.prints({ key: 'value' }, 'sufix')
  end
end
