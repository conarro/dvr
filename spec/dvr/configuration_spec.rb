require 'spec_helper'

describe DVR::Configuration do
  
  describe 'default options' do
    it 'uses filesystem as the episode source' do
      expect(subject.episode_source).to eq(:filesystem)
    end

    it 'uses rspec api documentation as the episode format' do
      expect(subject.episode_format).to eq(:rspec_api_documentation)
    end

    it 'has no default location from which to record episodes' do
      expect(subject.episode_location).to be_nil
    end

    it 'has a destination directory to record to' do
      expect(File.directory?(subject.destination)).to be_true
    end

    it 'has a server name to use for the recorded file' do
      expect(subject.filename).to be_a(String)
    end
  end

end