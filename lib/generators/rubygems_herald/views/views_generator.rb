module RubygemsHerald
  class ViewsGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../../../app/views/gem_displays', __FILE__)
    require File.expand_path('../../utils', __FILE__)
    include Generators::Utils
    include Rails::Generators::Migration
    
    # all public methods in here will be run in order

    def add_views
      output "I'm copying the default views into app/views/gem_displays for you.", :magenta
      template "index.html.haml", "app/views/gem_displays/index.html.haml"
      template "show.html.haml", "app/views/gem_displays/show.html.haml"
      template "_widget.html.haml", "app/views/gem_displays/_widget.html.haml"
    end
  end
end