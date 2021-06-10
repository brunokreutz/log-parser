# LogParser
LogParser is a Ruby application that parsers a .log file.

It receives a log as argument and prints the following:
- list of webpages with most page views in a decreasing order (no ids)
- list of unique page views also ordered in a descending manner (include ids)

## Installing
Download the project, open it and run: 

	$ bundle install  

## Running the script
The scripts accepts the location of the file as a parameter

	$ ruby log_parser.rb -f %path_to_file%
you can run the script without passing the parameter and the script will read the default log file

	$ ruby log_parser.rb
For help:

    $ ruby log_parser.rb -h

## Running the tests
Run the following command in the project root directory

	$ bundle exec rspec  

## License 
This script is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
