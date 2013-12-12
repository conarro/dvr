module DVR

  class Configuration
    attr_accessor :episode_format, :episode_source, :destination, :filename

    def initialize
      @episode_format = :rspec_api_documentation
      @episode_location = nil
      @episode_source = :filesystem
      @destination = set_destination
      @filename = 'dvr_server.rb'
    end

    def episode_location
      @episode_location
    end

    def episode_location= location
      @episode_location = location
      set_destination
    end

    def set_destination
      @destination = File.expand_path('../dvr_downloads', self.episode_location)
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
  end

end