module DVR
  class Episode
    attr_reader :content
    
    def self.batch_record contents
      contents.map {|c| record(c)}
    end

    def self.record content
      new(content)
    end

    def initialize content
      @content = content
    end

    def play
      translate.map do |e|
        "#{e[:method]} '#{e[:path]}' do\n '#{e[:response].body}'\nend\n\n"
      end.join
    end

    def translate
      data.map do |req|
        {
          :method => req['request_method'].downcase,
          :path => req['request_path'].gsub('?', '/'),
          :response => build_response(req)
        }
      end
    end

    def data
      content.fetch('requests')
    end

    def build_response req
      OpenStruct.new(
        :status_code => req['response_status'],
        :status_text => req['response_status_text'],
        :body => req['response_body'],
        :content_type => req['response_content_type'],
        :headers => req['response_headers']
      )
    end

  end
end