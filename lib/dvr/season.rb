module DVR
  class Season
    attr_reader :episodes, :download_location

    def initialize episodes
      @episodes = episodes
      @download_location = [DVR.configuration.destination, DVR.configuration.filename].join("/")
    end

    def binge_watch
      episodes.map(&:play).join
    end

    def download
      save
    end

    protected

    def save
      File.open(download_location, 'w') do |f|
        f.write(sinatra_file_headers)
        f.write(before_hooks)
        f.write(binge_watch)
      end
    end

    def before_hooks
      %(\nbefore { request.path_info += '/'+ request.query_string if request.query_string && !request.query_string.empty? }\n\n)
    end

    def sinatra_requirements
      ['rubygems', 'sinatra']
    end
    
    def sinatra_file_headers
      sinatra_requirements.map {|r| "require '#{r}'\n"}.join
    end
  end
end