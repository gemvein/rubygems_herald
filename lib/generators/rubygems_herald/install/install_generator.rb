module RubygemsHerald
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    require File.expand_path('../../utils', __FILE__)
    include Generators::Utils
    include Rails::Generators::Migration
    
    def hello
      output "Rubygems Herald is ready to announce your gems in style.", :magenta
    end
    
    # all public methods in here will be run in order

    def add_initializer
      output "To start with, you'll need an initializer.  This is where you put your configuration options.", :magenta
      template "initializer.rb", "config/initializers/rubygems_herald.rb"
    end

    def add_migrations
      unless ActiveRecord::Base.connection.table_exists? 'gems'
        migration_template 'migrate/create_gem_displays_table.rb', 'db/migrate/create_gem_displays_table.rb' rescue output $!.message
      end
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      else
        "%.3d" % (current_migration_number(dirname) + 1)
      end
    end
  end
end