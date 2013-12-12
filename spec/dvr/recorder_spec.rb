require 'spec_helper'

describe DVR::Recorder do
  before do
    DVR.configure {|c| c.episode_location = fixture_path}
  end

  it 'finds files from the episode location' do
    expect(File.file?(subject.files.first)).to be_true
  end

  it 'parses files to json' do
    expect(subject.parse_file(subject.files.first)).to be_a(Hash)
  end

  it 'records episodes' do
    expect(subject.get_episodes.first).to be_a(DVR::Episode)
  end

  it 'records seasons' do
    expect(subject.get_season).to be_a(DVR::Season)
  end
end