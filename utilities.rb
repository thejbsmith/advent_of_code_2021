class Utilities
  class << self
    def parse_input(file_name:)
      directory = File.dirname(caller_locations.first.path)
      file_path = "#{directory}/#{file_name}"

      File.readlines(file_path, chomp: true)
    end
  end
end