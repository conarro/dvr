require 'spec_helper'

describe DVR do
  describe '#record' do
    it 'records a season of episodes' do
      expect(DVR.record).to be_a(DVR::Season)
    end
  end

  it 'has a download location' do
    expect(DVR.download_location).to be_a(String)
  end
end
