require 'pry'
module DVR

  class Configuration
    attr_accessor :episode_format, :episode_location, :episode_source, :filename, :destination, :auto_create_directories, :destination, :recording_location

    def initialize
      @episode_format = :rspec_api_documentation
      @episode_location = nil
      @episode_source = :filesystem
      @filename = 'dvr_server.rb'
      @destination = "#{Dir.pwd}/dvr"
      @recording_location = File.join(@destination, @filename)
      @auto_create_directories = true
    end

    def recording_location
      get_real_path(@recording_location)
    end

    def full_destination
      get_real_path(@destination)
    end

    protected

    def get_real_path path
      begin
        Pathname.new(path).realpath.to_s
      rescue Errno::ENOENT => e
        if @auto_create_directories
          DVR.prep_destination
          self.destination = get_real_path(path)
        else
          raise InvalidConfiguration, "Invalid path #{path}. No such directory."
        end
      end
    end

  end

  class InvalidConfiguration < Exception; end

  extend self
  attr_accessor :configuration

  def configuration
    @configuration ||= Configuration.new
  end

  def configure
    yield(configuration)
    @configuration
  end

end