# frozen_string_literal: true

module LogParser
  # This service is responsible for counting the number of views of the pages available in the hashes
  class PageCollection
    attr_accessor :orignal_pages, :no_id_pages

    def initialize
      @orignal_pages = {}
      @no_id_pages = {}
      @orignal_pages.default = 0
      @no_id_pages.default = 0
    end

    # Orders the hash and prints they key value with the designed suffix
    def sort_collections_desc
      @orignal_pages = @orignal_pages.sort_by { |_key, value| -value }
      @no_id_pages = @no_id_pages.sort_by { |_key, value| -value }
    end
  end
end
