require 'spec_helper'

describe DVR::Season do
  before { DVR.configure {|c| c.destination = '/my/destination' } }
  
  let(:content) { JSON.parse(File.open(example_request_file).read) }
  let(:episode) { DVR::Episode.new(content) }
  let(:season) { DVR::Season.new([episode]) }

  describe 'defaults' do
    it 'has a collection of episodes' do
      expect(season.episodes).to be_an(Array)
      expect(season.episodes.first).to be_an(DVR::Episode)
    end
  end

  describe '#binge_watch' do
    it 'plays all episodes in the season' do
      expect(season.episodes.first).to receive(:play)
      season.binge_watch
    end
  end

  describe '#download_location' do
    # it 'saves to the destination' do
    #   expect(season.download_location.split('/').first).to eq(DVR.configuration.destination)
    # end

    it 'saves to the destination' do
      expect(season.download_location.split('/').last).to eq(DVR.configuration.filename)
    end
  end
end