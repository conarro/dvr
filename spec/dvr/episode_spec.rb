require 'spec_helper'

describe DVR::Episode do
  let(:content) { JSON.parse(File.open(example_request_file).read) }
  let(:batch_content) { [content] }
  let(:episode) { DVR::Episode.new(content) }
  
  describe 'defaults' do
    it 'has content' do
      expect(episode.content).to_not be_nil
    end
  end

  describe '#translate' do
    let(:translation) { episode.translate.first }
    
    it 'translates the request method' do
      expect(['get', 'post', 'put', 'patch', 'delete'].include?(translation.fetch(:method))).to be_true
    end

    it 'translates request path' do
      expect(translation.fetch(:path)).to be_a(String)
    end

    context 'response' do
      let(:response) { translation.fetch(:response) }

      it 'builds a response object' do
        expect(response).to be_an(OpenStruct)
      end

      it 'sets the status code' do
        expect(response.status_code).to be_an(Integer)
      end

      it 'sets the status text' do
        expect(response.status_text).to be_a(String)
      end

      it 'sets response body' do
        expect(response.body).to be_a(String)
      end

      it 'sets the content type' do
        expect(response.content_type).to be_a(String)
      end

      it 'sets the response headers' do
        expect(response.headers).to be_a(Hash)
      end
    end
    
  end

  describe '#record' do
    it 'records a new episode' do
      expect(DVR::Episode.record(content)).to be_a(DVR::Episode)
    end
  end

  describe '#batch_record' do
    let(:result) { DVR::Episode.batch_record(batch_content) }
    
    it 'records multiple episodes' do
      expect(result).to be_an(Array)
      expect(result.first).to be_an(DVR::Episode)
    end
  end

  describe '#play' do
    it 'plays the episode back as a string' do
      expect(episode.play).to be_a(String)
    end
  end
end