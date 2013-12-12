require 'spec_helper'

module Kernel
  def `(cmd)
    cmd
  end
end

describe DVR do
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
