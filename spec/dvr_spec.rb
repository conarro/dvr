require 'spec_helper'

describe DVR do
  describe '#record' do
    it 'records a season of episodes' do
      expect(DVR.record).to be_a(DVR::Season)
    end
  end
end
