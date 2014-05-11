module RubygemsHerald
  def self.configure(configuration = RubygemsHerald::Configuration.new)
    if block_given?
      yield configuration
    end
    @@configuration = configuration
  end
  
  def self.configuration
    @@configuration ||= RubygemsHerald::Configuration.new
  end
  
  class Configuration
    attr_accessor :gems, :refresh_interval
    
    def initialize
      self.gems = []
      self.refresh_interval = '1 hour'
    end
  end
end