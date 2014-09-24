module Spree
  module WbsbooksSample
    def self.load_wbsbooks_sample(file)
      path = File.expand_path(wbsbooks_samples_path + "#{file}.rb")
      # Check to see if the specified file has been loaded before
      if !$LOADED_FEATURES.include?(path)
        require path
        puts "Loaded #{file.titleize} wbsbooks samples"
      end
    end

    private
      def self.wbsbooks_samples_path
        Pathname.new(File.join(File.dirname(__FILE__), '..', '..', 'db', 'wbsbooks_samples'))
      end
  end
end
