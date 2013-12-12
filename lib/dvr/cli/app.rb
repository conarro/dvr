module DVR
  module CLI
    class App < Thor
      namespace :dvr

      desc "record FROM_DIRECTORY", "Record episodes from API docs and playback as a Sinatra server file"
      method_option :episode_format, :aliases => "-f", :desc => "The format of the provided files", :required => false
      method_option :episode_source, :aliases => "-s", :desc => "The source of the JSON files", :required => false
      method_option :destination, :aliases => "-d", :desc => "The destination for the recorded server file", :required => false
      method_option :filename, :aliases => "-n", :desc => "The name for the recorded server file", :required => false
      method_option :auto_create_directories, :aliases => "-a", :type => :boolean, :desc => "Flag to auto create directories", :required => false
      def record(episode_location)
        configure_options!
        DVR.configure {|c| c.episode_location = episode_location}
        DVR.record_and_download
      end

      desc "play SERVER_FILE", "Play back recorded episodes by starting a Sinatra server"
      def play(file)
        puts "Playing episodes from #{file}"
        DVR.configure {|c| c.recording_location = file}
        DVR.play
      end

      private

      def configure_options!
        DVR.configure do |config|
          options.each {|option, value| config.send("#{option}=", value)}
        end
      end

    end
  end
end