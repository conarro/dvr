module DVR

  class Configuration
    attr_accessor :episode_format, :episode_location, :episode_source, :destination, :filename

    def initialize
      @episode_format = :rspec_api_documentation
      @episode_location = nil
      @episode_source = :filesystem
      @destination = File.expand_path('../../..', __FILE__)
      @filename = 'dvr_server.rb'
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