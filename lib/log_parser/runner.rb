# frozen_string_literal: true

module LogParser
  # This is class that will run the all the scripts
  class Runner
    # parse the options passed as arguments to the program
    def self.parse_options(options)
      opts = OptionParser.new do |opt|
        opt.on('-f', '--file [FILE]', 'The location of the log file') do |file|
          options[:file] = file
        end
      end
      opts.parse(ARGV)
      options
    end

    # Prints each line of a hash with a sufix
    def self.prints(hash, sufix)
      hash.each do |key, value|
        puts "#{key} #{value} #{sufix}"
      end
    end

    # Runs the the scripts to parse the log file
    def self.run
      options = parse_options({})
      service = FileLoader.new
      page_collection = options[:file].nil? ? service.load_file : service.load_file(options[:file])
      page_collection.sort_collections_desc
      prints(page_collection.orignal_pages, 'unique views')
      puts
      prints(page_collection.no_id_pages, 'visits')
    end
  end
end
