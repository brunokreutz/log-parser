# frozen_string_literal: true

module LogParser
  # This is a model that represents the log entry
  class LogEntry
    attr_reader :page, :ip

    def initialize(log_line)
      @page = log_line[0]
      @ip = log_line[1]
    end

    def filter_id
      no_id_page = @page.delete '0-9'
      no_id_page.delete_suffix '/'
    end
  end
end
