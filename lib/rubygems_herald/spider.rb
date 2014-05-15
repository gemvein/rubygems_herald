module RubygemsHerald
  class Spider
    attr_accessor :name, :gem

    def initialize(name)
      self.name = name
    end

    def url
      'http://www.rubygems.org/api/v1/gems/' + name + '.json'
    end

    def body
      require 'net/http'

      uri = URI.parse(url)
      req = Net::HTTP::Get.new(uri.path)
      res = Net::HTTP.start(uri.host, uri.port) {|http|
        http.request(req)
      }
      res.body
    end

    def data
      raw = body.parse_json
      raw['expires_at'] = calculate_expiration
      raw
    end

    def calculate_expiration
      Time.now + RubygemsHerald.configuration.refresh_interval
    end
  end
end

class String
  def is_json?
    begin
      !!JSON.parse(self)
    rescue
      false
    end
  end

  def parse_json
    if is_json?
      JSON.parse self
    else
      raise :invalid_json_response.l + ': ' + self
    end
  end
end