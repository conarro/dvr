require 'spec_helper'

module Kernel
  def `(cmd)
    cmd
  end
end

describe DVR do

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

  describe '#play' do
    it 'plays back a recorded server' do
      expect(DVR.play).to eq("bundle exec ruby #{DVR.configuration.recording_location}")
    end
  end

  describe '#record' do
    it 'records a season of episodes' do
      expect(DVR.record).to be_a(DVR::Season)
      expect(DVR.recorder).to receive(:get_season)
      DVR.record
    end
  end

  it 'has a download location' do
    expect(DVR.download_location).to be_a(String)
  end
end
