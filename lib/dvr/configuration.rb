module DVR

  class Configuration
    attr_accessor :episode_format, :episode_location, :episode_source, :filename, :destination

    def initialize
      @episode_format = :rspec_api_documentation
      @episode_location = nil
      @episode_source = :filesystem
      @filename = 'dvr_server.rb'
      @destination = "#{Dir.pwd}/dvr"
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