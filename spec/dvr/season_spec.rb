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

end