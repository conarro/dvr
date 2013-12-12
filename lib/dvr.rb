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
    puts "Downloaded to #{download_location}"
  end

  def recorder
    @recorder ||= Recorder.new
  end

  def download_location
    @download_location ||= File.join(DVR.configuration.destination, DVR.configuration.filename)
  end

  def prep_destination
    unless File.directory?(DVR.configuration.destination)
      puts "Created destination directory at #{DVR.configuration.destination}"
      Dir.mkdir(DVR.configuration.destination)
    else
      puts "Used existing destination directory at #{DVR.configuration.destination}"
    end
  end
  
end
