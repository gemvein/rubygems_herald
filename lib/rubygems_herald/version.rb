module RubygemsHerald
  VERSION = File.read(File.expand_path('../../../VERSION', __FILE__))
  
  def self.version_string
    "RubygemsHerald version #{RubygemsHerald::VERSION}"
  end
end
