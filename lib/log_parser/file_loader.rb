# frozen_string_literal: true

module LogParser
  # This service reads the log and saves the necessary data about the pages
  class FileLoader
    # Loads the log file from the location that can be passed as an optional parameter.
    # Saves the results in two hashes, one for the unique views and other for total views.
    def load_file(file = File.join(File.expand_path('..', Dir.pwd), 'log-parser/data/webserver.log'))
      pages = PageCollection.new
      File.open(file, 'r').each_line do |row|
        log_entry = LogEntry.new(row.split)
        pages.orignal_pages[log_entry.page] += 1
        pages.no_id_pages[log_entry.filter_id] += 1
      end
      pages
    rescue StandardError => e
      raise "Error reading #{file}: #{e}"
    end
  end
end
