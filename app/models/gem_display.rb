class GemDisplay < ActiveRecord::Base
  validates_presence_of :name
  validates :name, :inclusion=> { :in => RubygemsHerald.configuration.gems }

  before_create :load_rubygem
  after_find :check_expiration

  def check_expiration
    if expires_at > Time.now
      update
    end
  end

  def update
    load_rubygem
    save
  end

  def rubygem
    spider.data
  end

  def rubygems_uri
    spider.uri
  end

  def spider
    RubygemsHerald::Spider.new(name)
  end

  def self.load_rubygems
    for gem_name in RubygemsHerald.configuration.gems
      create( { name: gem_name } )
    end
    all
  end

  def load_rubygem
    rubygem.each {|key, value| write_attribute(key, value.to_s) if self.respond_to?(key) }
    self
  end

  def to_param
    name
  end
end
