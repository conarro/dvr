require 'spec_helper'

describe DVR::Configuration do
  def test_path(path)
    File.exists?(path)
  end

  before :all do
    @tmp_path = File.expand_path('../../tmp_dvr_destination', __FILE__)
    tmp_dir = Dir.mkdir(@tmp_path)
    @configuration = DVR.configure do |c|
      c.destination = @tmp_path
      c.recording_location = @tmp_path
    end
  end

  after :all do
    Dir.rmdir(@tmp_path)
  end

  describe 'default options' do
    it 'uses filesystem as the episode source' do
      expect(@configuration.episode_source).to eq(:filesystem)
    end

    it 'uses rspec api documentation as the episode format' do
      expect(@configuration.episode_format).to eq(:rspec_api_documentation)
    end

    it 'has no default location from which to record episodes' do
      expect(@configuration.episode_location).to be_nil
    end

    it 'has a destination directory to record to' do
      expect(test_path(@configuration.destination)).to be_true
    end

    it 'has a server name to use for the recorded file' do
      expect(@configuration.filename).to be_a(String)
    end

    it 'has a recording location to use for playback' do
      expect(test_path(@configuration.recording_location)).to be_true
    end
  end

end