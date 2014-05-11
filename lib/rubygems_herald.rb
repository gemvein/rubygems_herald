module RubygemsHerald
  require 'rails/all'
  require 'rails-i18n'

  require 'rubygems_herald/configuration'
  require 'rubygems_herald/railtie'
  require 'rubygems_herald/localization'
  require 'rubygems_herald/version'
  require 'rubygems_herald/spider'
  require 'rubygems_herald/engine'

  require 'haml-rails'
end