module DVR
  class Recorder

    def get_episodes
      Episode.batch_record(parsed_files)
    end

    def get_season
      Season.new(get_episodes)
    end

    def files
      Dir.glob("#{DVR.configuration.episode_location}/**/*.json").select {|f| !f.include?('index.json') }
    end

    def parsed_files
      files.map {|f| parse_file(f)}
    end

    def parse_file file_loc
      JSON.parse(File.open(file_loc).read)
    end

  end
end