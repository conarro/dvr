require 'json'
require "dvr/version"
require "dvr/configuration"
require "dvr/episode"
require "dvr/recorder"
require "dvr/season"

module DVR
  extend self

  def record
    raise DVR::InvalidConfiguration unless configuration.episode_location
    recorder.get_season
  end

  def record_and_download
    record.download
  end

  def recorder
    @recorder ||= Recorder.new
  end
  
end
