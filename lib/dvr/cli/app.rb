module DVR
  module CLI
    class App < Thor
      namespace :dvr

      desc "record", "Record episodes from API docs and playback as a Sinatra server file"
      method_option :episode_location, :aliases => "-l", :desc => "The location of the JSON files to record", :required => true
      method_option :episode_format, :aliases => "-f", :desc => "The format of the provided files", :required => false
      method_option :episode_source, :aliases => "-s", :desc => "The source of the JSON files", :required => false
      method_option :destination, :aliases => "-d", :desc => "The destination for the recorded server file", :required => false
      method_option :filename, :aliases => "-n", :desc => "The name for the recorded server file", :required => false
      def record
        configure_options!
        DVR.record_and_download
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