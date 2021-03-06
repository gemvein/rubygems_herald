# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubygems_herald"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Karen Lundgren"]
  s.date = "2014-05-19"
  s.description = "This project has been renamed to Museum. This version has been abandoned and remains here only for historical reasons."
  s.email = "karen.e.lundgren@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".coveralls.yml",
    ".document",
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/gem_displays_controller.rb",
    "app/helpers/gem_displays_helper.rb",
    "app/models/gem_display.rb",
    "app/views/gem_displays/_widget.html.haml",
    "app/views/gem_displays/index.html.haml",
    "app/views/gem_displays/show.html.haml",
    "config/locales/en.yml",
    "config/routes.rb",
    "lib/generators/rubygems_herald/install/install_generator.rb",
    "lib/generators/rubygems_herald/install/templates/initializer.rb",
    "lib/generators/rubygems_herald/install/templates/migrate/create_gem_displays_table.rb",
    "lib/generators/rubygems_herald/utils.rb",
    "lib/generators/rubygems_herald/views/views_generator.rb",
    "lib/rubygems_herald.rb",
    "lib/rubygems_herald/configuration.rb",
    "lib/rubygems_herald/engine.rb",
    "lib/rubygems_herald/localization.rb",
    "lib/rubygems_herald/railtie.rb",
    "lib/rubygems_herald/spider.rb",
    "lib/rubygems_herald/version.rb",
    "rubygems_herald.gemspec",
    "spec/controllers/gem_displays_controller_spec.rb",
    "spec/dummy/.rspec",
    "spec/dummy/Rakefile",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/views/layouts/application.html.haml",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/bootstrap_leather.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/rubygems_herald.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/routes.rb",
    "spec/dummy/db/development.sqlite3",
    "spec/dummy/db/migrate/20140512012318_create_gem_displays_table.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/seeds.rb",
    "spec/dummy/db/test.sqlite3",
    "spec/dummy/lib/assets/.keep",
    "spec/dummy/lib/tasks/.keep",
    "spec/dummy/log/.keep",
    "spec/dummy/log/development.log",
    "spec/dummy/log/test.log",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/public/robots.txt",
    "spec/factories/gem_display.rb",
    "spec/models/gem_display_spec.rb",
    "spec/rubygems_herald_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/gem_display_support.rb",
    "spec/views/gem_displays/index.html.haml_spec.rb",
    "spec/views/gem_displays/show.html.haml_spec.rb"
  ]
  s.homepage = "http://github.com/gemvein/rubygems_herald"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "This project has been renamed to Museum. This version has been abandoned and remains here only for historical reasons."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.1"])
      s.add_runtime_dependency(%q<rails-i18n>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap_leather>, [">= 0"])
      s.add_runtime_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_runtime_dependency(%q<database_cleaner>, [">= 0"])
      s.add_runtime_dependency(%q<rubygems_herald>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 4.1"])
      s.add_dependency(%q<rails-i18n>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<bootstrap_leather>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<rubygems_herald>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.1"])
    s.add_dependency(%q<rails-i18n>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<bootstrap_leather>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<rubygems_herald>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
  end
end

